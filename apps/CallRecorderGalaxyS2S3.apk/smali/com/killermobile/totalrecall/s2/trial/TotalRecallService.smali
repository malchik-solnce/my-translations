.class public Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
.super Landroid/app/Service;
.source "TotalRecallService.java"

# interfaces
.implements Lcom/killermobile/totalrecall/s2/trial/DB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType:[I = null

.field public static final AUDIO_FORMAT_WAV:I = 0xfa4

.field private static final AUTO_RESTART_INTERVAL:J = 0x112a880L

.field private static CALL_DESTINATION:I = 0x0

.field private static CALL_NUMBER:Ljava/lang/String; = null

.field private static final NOTIFICATION_ACTIVE:I = 0x0

.field public static final NOTIFICATION_DICTAPHONE_RECORDING_IS_OFF:I = 0x3

.field public static final NOTIFICATION_DICTAPHONE_RECORDING_IS_ON:I = 0x2

.field public static final NOTIFICATION_MANUAL_CALL_RECORDING_IS_OFF:I = 0x5

.field public static final NOTIFICATION_MANUAL_CALL_RECORDING_IS_ON:I = 0x4

.field public static final NOTIFICATION_REMOTELY_TRIGGERED_REC:I = 0x1

.field private static NUM_CHECKS_PASSED:Z = false

.field private static final PHONE_PROJECTION_NAME:[Ljava/lang/String; = null

.field private static final PHONE_SELECTION:Ljava/lang/String; = "number=?"

.field private static final PREF_NEXT_OOM_ADJ:Ljava/lang/String; = "next_oom_adj"

.field private static final sampleRates:[I


# instance fields
.field private allowRecordViaSms:Z

.field audioFormat:I

.field audioManager:Landroid/media/AudioManager;

.field private autoEvernoteUploadEnabled:Z

.field private autoMailUploadEnabled:Z

.field private autoMailUploadPassword:Ljava/lang/String;

.field private autoMailUploadRecipient:Ljava/lang/String;

.field private autoMailUploadUsername:Ljava/lang/String;

.field private autoResetService:Z

.field private autoStart:Z

.field final binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

.field private calls:Lcom/killermobile/totalrecall/s2/trial/CallType;

.field private contentResolver:Landroid/content/ContentResolver;

.field private final contentValues:Landroid/content/ContentValues;

.field currentFormat:I

.field currentPhone:Ljava/lang/String;

.field currentRecordStart:J

.field currentRecordStop:J

.field currentlyRecordedFile:Ljava/io/File;

.field currentlyRecordingType:Lcom/killermobile/totalrecall/s2/trial/CallType;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private deleteFileAfterGmailEvernoteUpload:Z

.field destination:Ljava/lang/String;

.field private dictAutoStartRecording:Z

.field private dictAutoStopRecording:Z

.field dictNotificationOn:Z

.field private dontRecordWithBTHeadset:Z

.field private final encryption:Lcom/killermobile/totalrecall/s2/trial/Encryption;

.field private eulaAccepted:Z

.field private expiration:Ljava/lang/String;

.field private font:Lorg/appforce/ui/Font;

.field handler:Landroid/os/Handler;

.field private hideRecordingStrategyDlg:Z

.field isRecording:Z

.field private justStarted:Z

.field private lastMeaningfulCallSetting:Lcom/killermobile/totalrecall/s2/trial/CallType;

.field mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

.field private m_startRecordingHandler:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;

.field manualRecordingNotif:Z

.field maxDuration:J

.field maxDurationEnabled:Z

.field maxSize:J

.field maxSizeEnabled:Z

.field minDuration:J

.field minDurationEnabled:Z

.field private nextTestNumber:I

.field private notificationActive:Landroid/app/Notification;

.field private final now:Ljava/util/GregorianCalendar;

.field onInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private final packageName:Ljava/lang/String;

.field prompt:Z

.field recordAfterCallStart:Z

.field recorder:Landroid/media/MediaRecorder;

.field private recorderAudioSource:I

.field private recordingNumbers:Ljava/lang/String;

.field private recordingNumbersApplyFor:I

.field private recordingNumbersRecordSelected:Z

.field recordingWakeLock:Z

.field private recordsListSortOrder:I

.field private recoveryMail:Ljava/lang/String;

.field private rootNiceValue:Z

.field private smsNotificationEnabled:Z

.field private smsPassword:Ljava/lang/String;

.field private smsPasswordEnabled:Z

.field speakerPhone:Z

.field private statusBarHided:Z

.field private storageAvailable:Z

.field streamSolo:Z

.field private testNumber:Ljava/lang/String;

.field private testResults:Ljava/lang/String;

.field private theme:I

.field private toastsAllowed:Z

.field private useContactNameForRecord:Z

.field private useDateForRecord:Z

.field private useTimeForRecord:Z

.field private vibrationDuration:I

.field private wizardState:Lcom/killermobile/totalrecall/s2/trial/WizardState;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType()[I
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/CallType;->values()[Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 66
    const-string v1, "name"

    aput-object v1, v0, v2

    .line 65
    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->PHONE_PROJECTION_NAME:[Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->CALL_NUMBER:Ljava/lang/String;

    .line 78
    sput-boolean v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->NUM_CHECKS_PASSED:Z

    .line 190
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->sampleRates:[I

    .line 55
    return-void

    .line 190
    :array_0
    .array-data 0x4
        0x44t 0xact 0x0t 0x0t
        0x22t 0x56t 0x0t 0x0t
        0x11t 0x2bt 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 123
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->contentValues:Landroid/content/ContentValues;

    .line 128
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordingType:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 158
    iput-boolean v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoResetService:Z

    .line 172
    iput v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    .line 174
    iput v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->nextTestNumber:I

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->testNumber:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->testResults:Ljava/lang/String;

    .line 179
    iput v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordsListSortOrder:I

    .line 183
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->now:Ljava/util/GregorianCalendar;

    .line 185
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorder:Landroid/media/MediaRecorder;

    .line 189
    iput-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    .line 192
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/Encryption;

    invoke-direct {v0}, Lcom/killermobile/totalrecall/s2/trial/Encryption;-><init>()V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->encryption:Lcom/killermobile/totalrecall/s2/trial/Encryption;

    .line 194
    iput-wide v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentRecordStart:J

    .line 195
    iput-wide v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentRecordStop:J

    .line 196
    iput v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentFormat:I

    .line 197
    iput-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentPhone:Ljava/lang/String;

    .line 202
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->handler:Landroid/os/Handler;

    .line 213
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    .line 1971
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$3;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->onInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 2080
    const-class v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->packageName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/CallType;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;

    return-object v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoStart:Z

    return v0
.end method

.method static synthetic access$10(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStartRecording:Z

    return v0
.end method

.method static synthetic access$11(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStopRecording:Z

    return v0
.end method

.method static synthetic access$12(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->hideRecordingStrategyDlg:Z

    return v0
.end method

.method static synthetic access$13(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)I
    .locals 1
    .parameter

    .prologue
    .line 172
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    return v0
.end method

.method static synthetic access$14(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->eulaAccepted:Z

    return v0
.end method

.method static synthetic access$15(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useDateForRecord:Z

    return v0
.end method

.method static synthetic access$16(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useTimeForRecord:Z

    return v0
.end method

.method static synthetic access$17(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useContactNameForRecord:Z

    return v0
.end method

.method static synthetic access$18(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadRecipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->allowRecordViaSms:Z

    return v0
.end method

.method static synthetic access$20(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadEnabled:Z

    return v0
.end method

.method static synthetic access$22(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoEvernoteUploadEnabled:Z

    return v0
.end method

.method static synthetic access$23(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->deleteFileAfterGmailEvernoteUpload:Z

    return v0
.end method

.method static synthetic access$24(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->toastsAllowed:Z

    return v0
.end method

.method static synthetic access$25(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dontRecordWithBTHeadset:Z

    return v0
.end method

.method static synthetic access$26(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoResetService:Z

    return v0
.end method

.method static synthetic access$27(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbers:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbersRecordSelected:Z

    return v0
.end method

.method static synthetic access$29(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)I
    .locals 1
    .parameter

    .prologue
    .line 166
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbersApplyFor:I

    return v0
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsPasswordEnabled:Z

    return v0
.end method

.method static synthetic access$30(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)I
    .locals 1
    .parameter

    .prologue
    .line 168
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->theme:I

    return v0
.end method

.method static synthetic access$31(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)I
    .locals 1
    .parameter

    .prologue
    .line 170
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->vibrationDuration:I

    return v0
.end method

.method static synthetic access$32(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)I
    .locals 1
    .parameter

    .prologue
    .line 174
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->nextTestNumber:I

    return v0
.end method

.method static synthetic access$33(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->testNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->testResults:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$35(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)I
    .locals 1
    .parameter

    .prologue
    .line 179
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordsListSortOrder:I

    return v0
.end method

.method static synthetic access$36(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->rootNiceValue:Z

    return v0
.end method

.method static synthetic access$37(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lorg/appforce/ui/Font;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->font:Lorg/appforce/ui/Font;

    return-object v0
.end method

.method static synthetic access$38(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoStart:Z

    return-void
.end method

.method static synthetic access$39(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Lcom/killermobile/totalrecall/s2/trial/CallType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;

    return-void
.end method

.method static synthetic access$4(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsNotificationEnabled:Z

    return v0
.end method

.method static synthetic access$40(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z

    return v0
.end method

.method static synthetic access$41(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V
    .locals 0
    .parameter

    .prologue
    .line 1956
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notifyDisabled()V

    return-void
.end method

.method static synthetic access$42(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/CallType;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->lastMeaningfulCallSetting:Lcom/killermobile/totalrecall/s2/trial/CallType;

    return-object v0
.end method

.method static synthetic access$43(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Lcom/killermobile/totalrecall/s2/trial/CallType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->lastMeaningfulCallSetting:Lcom/killermobile/totalrecall/s2/trial/CallType;

    return-void
.end method

.method static synthetic access$44(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsPasswordEnabled:Z

    return-void
.end method

.method static synthetic access$45(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsNotificationEnabled:Z

    return-void
.end method

.method static synthetic access$46(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->statusBarHided:Z

    return-void
.end method

.method static synthetic access$47(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1157
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getDefaultDestination()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$48(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$49(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->expiration:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->statusBarHided:Z

    return v0
.end method

.method static synthetic access$50(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recoveryMail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$51(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->allowRecordViaSms:Z

    return-void
.end method

.method static synthetic access$52(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStartRecording:Z

    return-void
.end method

.method static synthetic access$53(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStopRecording:Z

    return-void
.end method

.method static synthetic access$54(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->hideRecordingStrategyDlg:Z

    return-void
.end method

.method static synthetic access$55(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    return-void
.end method

.method static synthetic access$56(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->eulaAccepted:Z

    return-void
.end method

.method static synthetic access$57(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useDateForRecord:Z

    return-void
.end method

.method static synthetic access$58(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useTimeForRecord:Z

    return-void
.end method

.method static synthetic access$59(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useContactNameForRecord:Z

    return-void
.end method

.method static synthetic access$6(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->expiration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$60(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadRecipient:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$61(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadUsername:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$62(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$63(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadEnabled:Z

    return-void
.end method

.method static synthetic access$64(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoEvernoteUploadEnabled:Z

    return-void
.end method

.method static synthetic access$65(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->deleteFileAfterGmailEvernoteUpload:Z

    return-void
.end method

.method static synthetic access$66(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->toastsAllowed:Z

    return-void
.end method

.method static synthetic access$67(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dontRecordWithBTHeadset:Z

    return-void
.end method

.method static synthetic access$68(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoResetService:Z

    return-void
.end method

.method static synthetic access$69(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1146
    invoke-direct {p0, p1, p2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->scheduleAutoReset(J)V

    return-void
.end method

.method static synthetic access$7(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/Encryption;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->encryption:Lcom/killermobile/totalrecall/s2/trial/Encryption;

    return-object v0
.end method

.method static synthetic access$70(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbers:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$71(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbersRecordSelected:Z

    return-void
.end method

.method static synthetic access$72(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbersApplyFor:I

    return-void
.end method

.method static synthetic access$73(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->theme:I

    return-void
.end method

.method static synthetic access$74(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->nextTestNumber:I

    return-void
.end method

.method static synthetic access$75(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->testNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$76(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordsListSortOrder:I

    return-void
.end method

.method static synthetic access$77(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->rootNiceValue:Z

    return-void
.end method

.method static synthetic access$78(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V
    .locals 0
    .parameter

    .prologue
    .line 2081
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->startOomAdj()V

    return-void
.end method

.method static synthetic access$79(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->testResults:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$80(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Lorg/appforce/ui/Font;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->font:Lorg/appforce/ui/Font;

    return-void
.end method

.method static synthetic access$81(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->vibrationDuration:I

    return-void
.end method

.method static synthetic access$82()[I
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->sampleRates:[I

    return-object v0
.end method

.method static synthetic access$83(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;
    .locals 1
    .parameter

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->m_startRecordingHandler:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;

    return-object v0
.end method

.method static synthetic access$84(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/WizardState;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->wizardState:Lcom/killermobile/totalrecall/s2/trial/WizardState;

    return-object v0
.end method

.method static synthetic access$85(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z

    return-void
.end method

.method static synthetic access$86(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1940
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notifyDisabled(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$87(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$88(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V
    .locals 0
    .parameter

    .prologue
    .line 1896
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notifyEnabled()V

    return-void
.end method

.method static synthetic access$9(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recoveryMail:Ljava/lang/String;

    return-object v0
.end method

.method public static checkForS3()Z
    .locals 2

    .prologue
    .line 2145
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-I9300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2146
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E210K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2147
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E210L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2148
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E210S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2149
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "i9300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2150
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "t999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2151
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "d2att"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2152
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "i747"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2153
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1747"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2154
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SGH-N064"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2155
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SC-06D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2156
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-R530"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2157
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-R530U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2158
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-I535"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2159
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SPH-L710"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2145
    goto :goto_0
.end method

.method public static exportSettings(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)Z
    .locals 5
    .parameter "service"

    .prologue
    .line 1987
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1988
    .local v0, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "audio_format"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getAudioFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    const-string v2, "auto_start"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isAutoStart()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    const-string v2, "calls"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCalls()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getDestination()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "destination"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getDestination()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    :cond_0
    const-string v2, "dict_auto_start_bool"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isDictAutoStartRecording()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    const-string v2, "dict_auto_stop_bool"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isDictAutoStopRecording()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    const-string v2, "dict_notification_bool"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isDictNotificationOn()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1995
    const-string v2, "manual_recording_notif"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isManualRecordingNotif()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    const-string v2, "max_duration"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getMaxDuration()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    const-string v2, "max_duration_enabled"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isMaxDurationEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    const-string v2, "max_size"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getMaxSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    const-string v2, "max_size_enabled"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isMaxSizeEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    const-string v2, "min_duration"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getMinDuration()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    const-string v2, "min_duration_enabled"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isMinDurationEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    const-string v2, "prompt"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isPrompt()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    const-string v2, "recording_after_start_call_bool"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecordAfterCallStart()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    const-string v2, "recorder_audio_source"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getRecorderAudioSource()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    const-string v2, "recording_wake_lock_bool"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecordingWakeLock()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    const-string v2, "speaker_phone_bool"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isSpeakerPhone()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2007
    const-string v2, "status_bar_hided"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isStatusBarHided()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    const-string v2, "recording_stream_solo_bool"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isStreamSolo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    const-string v2, "toasts_allowed"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isToastsAllowed()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    const-string v2, "use_contact_name_for_record"

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isUseContactNameForRecord()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    const-string v2, "tr_settings_export"

    invoke-static {v2, v0}, Lcom/killermobile/totalrecall/s2/trial/PersistenceManager;->saveExternalData(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2016
    .end local v0           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v2

    .line 2014
    :catch_0
    move-exception v1

    .line 2015
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2016
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCallDestination()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->CALL_DESTINATION:I

    return v0
.end method

.method public static getCallNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->CALL_NUMBER:Ljava/lang/String;

    return-object v0
.end method

.method private getDefaultDestination()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "total_recall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static importSettings(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)Z
    .locals 6
    .parameter "service"

    .prologue
    const/4 v3, 0x0

    .line 2021
    const-string v2, "tr_settings_export"

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/PersistenceManager;->loadExternalData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2022
    .local v0, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    move v2, v3

    .line 2076
    :goto_0
    return v2

    .line 2025
    :cond_0
    :try_start_0
    const-string v2, "audio_format"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2026
    const-string v2, "audio_format"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAudioFormat(I)V

    .line 2027
    :cond_1
    const-string v2, "auto_start"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2028
    const-string v2, "auto_start"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAutoStart(Z)V

    .line 2029
    :cond_2
    const-string v2, "calls"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2030
    const-string v2, "calls"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setCalls(I)V

    .line 2031
    :cond_3
    const-string v2, "destination"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2032
    const-string v2, "destination"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDestination(Ljava/lang/String;)V

    .line 2033
    :cond_4
    const-string v2, "dict_auto_start_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2034
    const-string v2, "dict_auto_start_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStartRecording(Z)V

    .line 2035
    :cond_5
    const-string v2, "dict_auto_stop_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2036
    const-string v2, "dict_auto_stop_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStopRecording(Z)V

    .line 2037
    :cond_6
    const-string v2, "dict_notification_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2038
    const-string v2, "dict_notification_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictNotificationOn(Z)V

    .line 2039
    :cond_7
    const-string v2, "manual_recording_notif"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2040
    const-string v2, "manual_recording_notif"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setManualRecordingNotif(Z)V

    .line 2041
    :cond_8
    const-string v2, "max_duration"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2042
    const-string v2, "max_duration"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {p0, v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMaxDuration(J)V

    .line 2043
    :cond_9
    const-string v2, "max_duration_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2044
    const-string v2, "max_duration_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMaxDurationEnabled(Z)V

    .line 2045
    :cond_a
    const-string v2, "max_size"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2046
    const-string v2, "max_size"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {p0, v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMaxSize(J)V

    .line 2047
    :cond_b
    const-string v2, "max_size_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2048
    const-string v2, "max_size_enabled"

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMaxSizeEnabled(Z)V

    .line 2049
    :cond_c
    const-string v2, "min_duration"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2050
    const-string v2, "min_duration"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {p0, v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMinDuration(J)V

    .line 2051
    :cond_d
    const-string v2, "min_duration_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2052
    const-string v2, "min_duration_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMinDurationEnabled(Z)V

    .line 2053
    :cond_e
    const-string v2, "prompt"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2054
    const-string v2, "prompt"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setPrompt(Z)V

    .line 2055
    :cond_f
    const-string v2, "recording_after_start_call_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2056
    const-string v2, "recording_after_start_call_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordAfterCallStart(Z)V

    .line 2057
    :cond_10
    const-string v2, "recorder_audio_source"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2058
    const-string v2, "recorder_audio_source"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecorderAudioSource(I)V

    .line 2059
    :cond_11
    const-string v2, "recording_wake_lock_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2060
    const-string v2, "recording_wake_lock_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordingWakeLock(Z)V

    .line 2061
    :cond_12
    const-string v2, "speaker_phone_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2062
    const-string v2, "speaker_phone_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setSpeakerPhone(Z)V

    .line 2063
    :cond_13
    const-string v2, "status_bar_hided"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2064
    const-string v2, "status_bar_hided"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setStatusBarHided(Z)V

    .line 2065
    :cond_14
    const-string v2, "recording_stream_solo_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2066
    const-string v2, "recording_stream_solo_bool"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setStreamSolo(Z)V

    .line 2067
    :cond_15
    const-string v2, "toasts_allowed"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2068
    const-string v2, "toasts_allowed"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setToastsAllowed(Z)V

    .line 2069
    :cond_16
    const-string v2, "use_contact_name_for_record"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2070
    const-string v2, "use_contact_name_for_record"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setUseContactNameForRecord(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2072
    :cond_17
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2074
    :catch_0
    move-exception v1

    .line 2075
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 2076
    goto/16 :goto_0
.end method

.method public static isNumChecksPassed()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->NUM_CHECKS_PASSED:Z

    return v0
.end method

.method private notifyDisabled()V
    .locals 2

    .prologue
    .line 1957
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1958
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1959
    return-void
.end method

.method private notifyDisabled(Ljava/lang/String;)V
    .locals 8
    .parameter "reason"

    .prologue
    const/4 v7, 0x0

    .line 1942
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notifyDisabled()V

    .line 1943
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1946
    .local v1, notificationManager:Landroid/app/NotificationManager;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1945
    invoke-static {p0, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1948
    .local v0, intentActive:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02006b

    const-string v4, "TotallRecall остановлен"

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notificationActive:Landroid/app/Notification;

    .line 1949
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notificationActive:Landroid/app/Notification;

    const-string v3, "TotallRecall не в состоянии записывать"

    invoke-virtual {v2, p0, v3, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1950
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notificationActive:Landroid/app/Notification;

    const/16 v3, 0x22

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1952
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notificationActive:Landroid/app/Notification;

    invoke-virtual {v1, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1954
    return-void
.end method

.method private notifyEnabled()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1898
    iget-boolean v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->statusBarHided:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;

    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z

    if-nez v3, :cond_1

    .line 1899
    :cond_0
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notifyDisabled()V

    .line 1938
    :goto_0
    return-void

    .line 1903
    :cond_1
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1906
    .local v2, notificationManager:Landroid/app/NotificationManager;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1905
    invoke-static {p0, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1911
    .local v0, intentActive:Landroid/app/PendingIntent;
    iget-boolean v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->prompt:Z

    if-eqz v3, :cond_3

    .line 1912
    const-string v1, "Подсказки для записи "

    .line 1916
    .local v1, message:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType()[I

    move-result-object v3

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v4}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1926
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1927
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "вызовов"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1929
    iget-boolean v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->justStarted:Z

    if-nez v3, :cond_2

    .line 1930
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TotallRecall активирован\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1931
    :cond_2
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f02006b

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v1, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notificationActive:Landroid/app/Notification;

    .line 1933
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notificationActive:Landroid/app/Notification;

    const-string v4, "TotallRecall работает"

    invoke-virtual {v3, p0, v4, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1934
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notificationActive:Landroid/app/Notification;

    const/16 v4, 0x22

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 1936
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notificationActive:Landroid/app/Notification;

    invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1914
    .end local v1           #message:Ljava/lang/String;
    :cond_3
    const-string v1, "Автозапись "

    .restart local v1       #message:Ljava/lang/String;
    goto :goto_1

    .line 1918
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "входящих "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1919
    goto :goto_2

    .line 1921
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "исходящих "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1922
    goto :goto_2

    .line 1924
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "всех "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 1916
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readDB()V
    .locals 17

    .prologue
    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 1164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "global_settings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1166
    .local v10, cursor:Landroid/database/Cursor;
    const-string v1, "key"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1167
    .local v14, keyIndex:I
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1169
    .local v16, valueIndex:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1171
    .local v9, count:I
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioFormat:I

    .line 1172
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 1173
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->lastMeaningfulCallSetting:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 1174
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxDuration:J

    .line 1175
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->minDuration:J

    .line 1176
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxSize:J

    .line 1177
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->prompt:Z

    .line 1178
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoStart:Z

    .line 1179
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxDurationEnabled:Z

    .line 1180
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->minDurationEnabled:Z

    .line 1181
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->allowRecordViaSms:Z

    .line 1182
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxSizeEnabled:Z

    .line 1183
    invoke-direct/range {p0 .. p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getDefaultDestination()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->destination:Ljava/lang/String;

    .line 1185
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictNotificationOn:Z

    .line 1186
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStartRecording:Z

    .line 1187
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStopRecording:Z

    .line 1189
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->manualRecordingNotif:Z

    .line 1191
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->hideRecordingStrategyDlg:Z

    .line 1193
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useDateForRecord:Z

    .line 1194
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useTimeForRecord:Z

    .line 1195
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useContactNameForRecord:Z

    .line 1197
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->toastsAllowed:Z

    .line 1199
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dontRecordWithBTHeadset:Z

    .line 1201
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoResetService:Z

    .line 1210
    sget-object v1, Lorg/appforce/ui/ThemedViews$Theme;->gray:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-virtual {v1}, Lorg/appforce/ui/ThemedViews$Theme;->ordinal()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->theme:I

    .line 1212
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->vibrationDuration:I

    .line 1214
    sget-object v1, Lorg/appforce/ui/Font;->DEFAULT:Lorg/appforce/ui/Font;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->font:Lorg/appforce/ui/Font;

    .line 1216
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-lt v12, v9, :cond_5

    .line 1535
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1537
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->eulaAccepted:Z

    if-nez v1, :cond_1

    .line 1539
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/BootReceiver;->checkForSequenceStrategy(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1540
    const-string v1, "auto_start"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1541
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoStart:Z

    .line 1801
    :cond_0
    :goto_1
    const-string v1, "recorder_audio_source"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1805
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-nez v1, :cond_2

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 1806
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->lastMeaningfulCallSetting:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->lastMeaningfulCallSetting:Lcom/killermobile/totalrecall/s2/trial/CallType;

    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-ne v1, v2, :cond_4

    .line 1807
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;

    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-ne v1, v2, :cond_9e

    .line 1808
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->lastMeaningfulCallSetting:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 1813
    :cond_4
    :goto_2
    return-void

    .line 1218
    :cond_5
    invoke-interface {v10, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1219
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1220
    .local v13, key:Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1222
    .local v15, value:Ljava/lang/String;
    const-string v1, "audio_format"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1224
    :try_start_0
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioFormat:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_20

    .line 1216
    .end local v15           #value:Ljava/lang/String;
    :cond_6
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1228
    .restart local v15       #value:Ljava/lang/String;
    :cond_7
    const-string v1, "auto_start"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1230
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoStart:Z

    goto :goto_3

    .line 1232
    :cond_8
    const-string v1, "calls"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1235
    :try_start_1
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1236
    :catch_0
    move-exception v1

    goto :goto_3

    .line 1239
    :cond_9
    const-string v1, "last_meaningful_calls"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1242
    :try_start_2
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->lastMeaningfulCallSetting:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1243
    :catch_1
    move-exception v1

    goto :goto_3

    .line 1246
    :cond_a
    const-string v1, "destination"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1248
    if-eqz v15, :cond_b

    .end local v15           #value:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->destination:Ljava/lang/String;

    goto :goto_3

    .restart local v15       #value:Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getDefaultDestination()Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    .line 1250
    :cond_c
    const-string v1, "max_duration"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1253
    :try_start_3
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxDuration:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 1254
    :catch_2
    move-exception v1

    goto :goto_3

    .line 1257
    :cond_d
    const-string v1, "min_duration"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1260
    :try_start_4
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->minDuration:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 1261
    :catch_3
    move-exception v1

    goto :goto_3

    .line 1264
    :cond_e
    const-string v1, "max_duration_enabled"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1266
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxDurationEnabled:Z

    goto/16 :goto_3

    .line 1268
    :cond_f
    const-string v1, "min_duration_enabled"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1270
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->minDurationEnabled:Z

    goto/16 :goto_3

    .line 1272
    :cond_10
    const-string v1, "max_size_enabled"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1274
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxSizeEnabled:Z

    goto/16 :goto_3

    .line 1276
    :cond_11
    const-string v1, "bool_record_via_sms"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1278
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->allowRecordViaSms:Z

    goto/16 :goto_3

    .line 1280
    :cond_12
    const-string v1, "sms_password_enabled"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1282
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsPasswordEnabled:Z

    goto/16 :goto_3

    .line 1284
    :cond_13
    const-string v1, "sms_notification_enabled"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1286
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsNotificationEnabled:Z

    goto/16 :goto_3

    .line 1289
    :cond_14
    const-string v1, "sms_password"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1291
    if-eqz v15, :cond_15

    .end local v15           #value:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsPassword:Ljava/lang/String;

    goto/16 :goto_3

    .restart local v15       #value:Ljava/lang/String;
    :cond_15
    const/4 v15, 0x0

    goto :goto_5

    .line 1293
    :cond_16
    const-string v1, "status_bar_hided"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1295
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->statusBarHided:Z

    goto/16 :goto_3

    .line 1297
    :cond_17
    const-string v1, "expiration_time"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1299
    if-eqz v15, :cond_18

    .end local v15           #value:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->expiration:Ljava/lang/String;

    goto/16 :goto_3

    .restart local v15       #value:Ljava/lang/String;
    :cond_18
    const/4 v15, 0x0

    goto :goto_6

    .line 1301
    :cond_19
    const-string v1, "pass_recovery_mail"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1303
    if-eqz v15, :cond_1a

    .end local v15           #value:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recoveryMail:Ljava/lang/String;

    goto/16 :goto_3

    .restart local v15       #value:Ljava/lang/String;
    :cond_1a
    const/4 v15, 0x0

    goto :goto_7

    .line 1305
    :cond_1b
    const-string v1, "max_size"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1308
    :try_start_5
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxSize:J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_3

    .line 1309
    :catch_4
    move-exception v1

    goto/16 :goto_3

    .line 1312
    :cond_1c
    const-string v1, "prompt"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1314
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->prompt:Z

    goto/16 :goto_3

    .line 1316
    :cond_1d
    const-string v1, "dict_notification_bool"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1318
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictNotificationOn:Z

    goto/16 :goto_3

    .line 1320
    :cond_1e
    const-string v1, "dict_auto_start_bool"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1323
    :try_start_6
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStartRecording:Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_3

    .line 1324
    :catch_5
    move-exception v1

    goto/16 :goto_3

    .line 1327
    :cond_1f
    const-string v1, "dict_auto_stop_bool"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1330
    :try_start_7
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStopRecording:Z
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_3

    .line 1331
    :catch_6
    move-exception v1

    goto/16 :goto_3

    .line 1334
    :cond_20
    const-string v1, "hide_recording_strategy_dlg_bool"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1337
    :try_start_8
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->hideRecordingStrategyDlg:Z
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_3

    .line 1338
    :catch_7
    move-exception v1

    goto/16 :goto_3

    .line 1341
    :cond_21
    const-string v1, "recording_wake_lock_bool"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1344
    :try_start_9
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingWakeLock:Z
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_3

    .line 1345
    :catch_8
    move-exception v1

    goto/16 :goto_3

    .line 1348
    :cond_22
    const-string v1, "recording_after_start_call_bool"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1351
    :try_start_a
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordAfterCallStart:Z
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_3

    .line 1352
    :catch_9
    move-exception v1

    goto/16 :goto_3

    .line 1355
    :cond_23
    const-string v1, "speaker_phone_bool"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1358
    :try_start_b
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->speakerPhone:Z
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_3

    .line 1359
    :catch_a
    move-exception v1

    goto/16 :goto_3

    .line 1362
    :cond_24
    const-string v1, "recording_stream_solo_bool"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1365
    :try_start_c
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->streamSolo:Z
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_3

    .line 1366
    :catch_b
    move-exception v1

    goto/16 :goto_3

    .line 1369
    :cond_25
    const-string v1, "recorder_audio_source"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1372
    :try_start_d
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_c

    goto/16 :goto_3

    .line 1373
    :catch_c
    move-exception v1

    goto/16 :goto_3

    .line 1376
    :cond_26
    const-string v1, "eula_accepted"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1379
    :try_start_e
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->eulaAccepted:Z
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_d

    goto/16 :goto_3

    .line 1380
    :catch_d
    move-exception v1

    goto/16 :goto_3

    .line 1383
    :cond_27
    const-string v1, "use_date_for_record"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1386
    :try_start_f
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useDateForRecord:Z
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_e

    goto/16 :goto_3

    .line 1387
    :catch_e
    move-exception v1

    goto/16 :goto_3

    .line 1390
    :cond_28
    const-string v1, "use_time_for_record"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1393
    :try_start_10
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useTimeForRecord:Z
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_f

    goto/16 :goto_3

    .line 1394
    :catch_f
    move-exception v1

    goto/16 :goto_3

    .line 1397
    :cond_29
    const-string v1, "use_contact_name_for_record"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1400
    :try_start_11
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useContactNameForRecord:Z
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_10

    goto/16 :goto_3

    .line 1401
    :catch_10
    move-exception v1

    goto/16 :goto_3

    .line 1404
    :cond_2a
    const-string v1, "manual_recording_notif"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1407
    :try_start_12
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->manualRecordingNotif:Z
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_11

    goto/16 :goto_3

    .line 1408
    :catch_11
    move-exception v1

    goto/16 :goto_3

    .line 1411
    :cond_2b
    const-string v1, "auto_mail_upload_recipient"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1413
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadRecipient:Ljava/lang/String;

    goto/16 :goto_3

    .line 1415
    :cond_2c
    const-string v1, "auto_mail_upload_username"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1417
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadUsername:Ljava/lang/String;

    goto/16 :goto_3

    .line 1419
    :cond_2d
    const-string v1, "auto_mail_upload_password"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1421
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadPassword:Ljava/lang/String;

    goto/16 :goto_3

    .line 1423
    :cond_2e
    const-string v1, "auto_mail_upload_enabled"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1426
    :try_start_13
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadEnabled:Z
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_12

    goto/16 :goto_3

    .line 1427
    :catch_12
    move-exception v1

    goto/16 :goto_3

    .line 1430
    :cond_2f
    const-string v1, "auto_evernote_upload_enabled"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1433
    :try_start_14
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoEvernoteUploadEnabled:Z
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_13

    goto/16 :goto_3

    .line 1434
    :catch_13
    move-exception v1

    goto/16 :goto_3

    .line 1437
    :cond_30
    const-string v1, "delete_file_after_gmail_evernote_upload"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1440
    :try_start_15
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->deleteFileAfterGmailEvernoteUpload:Z
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_14

    goto/16 :goto_3

    .line 1441
    :catch_14
    move-exception v1

    goto/16 :goto_3

    .line 1444
    :cond_31
    const-string v1, "toasts_allowed"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1447
    :try_start_16
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->toastsAllowed:Z
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_15

    goto/16 :goto_3

    .line 1448
    :catch_15
    move-exception v1

    goto/16 :goto_3

    .line 1451
    :cond_32
    const-string v1, "dont_record_with_bt_headset"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1454
    :try_start_17
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dontRecordWithBTHeadset:Z
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_16

    goto/16 :goto_3

    .line 1455
    :catch_16
    move-exception v1

    goto/16 :goto_3

    .line 1458
    :cond_33
    const-string v1, "auto_reset_service"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1461
    :try_start_18
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoResetService:Z
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_17

    goto/16 :goto_3

    .line 1462
    :catch_17
    move-exception v1

    goto/16 :goto_3

    .line 1465
    :cond_34
    const-string v1, "recording_numbers_json"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1467
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbers:Ljava/lang/String;

    goto/16 :goto_3

    .line 1469
    :cond_35
    const-string v1, "recording_numbers_record_selected"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1472
    :try_start_19
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbersRecordSelected:Z
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_18

    goto/16 :goto_3

    .line 1473
    :catch_18
    move-exception v1

    goto/16 :goto_3

    .line 1476
    :cond_36
    const-string v1, "recording_numbers_apply_for"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1479
    :try_start_1a
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbersApplyFor:I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_19

    goto/16 :goto_3

    .line 1480
    :catch_19
    move-exception v1

    goto/16 :goto_3

    .line 1483
    :cond_37
    const-string v1, "theme"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1486
    :try_start_1b
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->theme:I

    .line 1487
    invoke-static {}, Lorg/appforce/ui/ThemedViews$Theme;->values()[Lorg/appforce/ui/ThemedViews$Theme;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->theme:I

    aget-object v1, v1, v2

    sput-object v1, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_1a

    goto/16 :goto_3

    .line 1488
    :catch_1a
    move-exception v1

    goto/16 :goto_3

    .line 1491
    :cond_38
    const-string v1, "font"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1493
    :try_start_1c
    invoke-static {v15}, Lorg/appforce/ui/Font;->getFontFromJson(Ljava/lang/String;)Lorg/appforce/ui/Font;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->font:Lorg/appforce/ui/Font;

    .line 1494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->font:Lorg/appforce/ui/Font;

    invoke-static {v1}, Lorg/appforce/ui/ThemedViews;->setCurrentFont(Lorg/appforce/ui/Font;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1b

    goto/16 :goto_3

    .line 1495
    :catch_1b
    move-exception v11

    .line 1496
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1499
    .end local v11           #e:Ljava/lang/Exception;
    :cond_39
    const-string v1, "vibration_duration"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1501
    :try_start_1d
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->vibrationDuration:I

    .line 1502
    move-object/from16 v0, p0

    iget v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->vibrationDuration:I

    sput v1, Lorg/appforce/ui/UiUtils;->VIBRATION:I
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_1c

    goto/16 :goto_3

    .line 1503
    :catch_1c
    move-exception v1

    goto/16 :goto_3

    .line 1506
    :cond_3a
    const-string v1, "next_test_number"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1508
    :try_start_1e
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->nextTestNumber:I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_1d

    goto/16 :goto_3

    .line 1509
    :catch_1d
    move-exception v1

    goto/16 :goto_3

    .line 1512
    :cond_3b
    const-string v1, "test_number"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1513
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->testNumber:Ljava/lang/String;

    goto/16 :goto_3

    .line 1515
    :cond_3c
    const-string v1, "test_results"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1516
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->testResults:Ljava/lang/String;

    goto/16 :goto_3

    .line 1518
    :cond_3d
    const-string v1, "records_list_sort_order"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1520
    :try_start_1f
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordsListSortOrder:I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_1e

    goto/16 :goto_3

    .line 1521
    :catch_1e
    move-exception v1

    goto/16 :goto_3

    .line 1524
    :cond_3e
    const-string v1, "root_nice_value"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1526
    :try_start_20
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->rootNiceValue:Z
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_1f

    goto/16 :goto_3

    .line 1527
    :catch_1f
    move-exception v1

    goto/16 :goto_3

    .line 1544
    .end local v13           #key:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_3f
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1545
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    .line 1546
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordAfterCallStart:Z

    .line 1547
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStartRecording:Z

    .line 1548
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStopRecording:Z

    .line 1549
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 1550
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->prompt:Z

    goto/16 :goto_1

    .line 1553
    :cond_40
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gt-i9100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1554
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_41

    .line 1555
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1557
    :cond_41
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1560
    :cond_42
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1561
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1563
    :cond_43
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hero"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dell streak"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1564
    :cond_44
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1566
    :cond_45
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i727"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1567
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1569
    :cond_46
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "incredible 2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1570
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1572
    :cond_47
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "incredible"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vivow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1574
    :cond_48
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1576
    :cond_49
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eris"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "desirec"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1577
    :cond_4a
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1579
    :cond_4b
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "evo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shift"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1580
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1582
    :cond_4c
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "g1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1583
    :cond_4d
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1585
    :cond_4e
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dstl1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1586
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1588
    :cond_4f
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xperia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_50

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    :cond_50
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mk16i"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1589
    :cond_51
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1591
    :cond_52
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m110s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1592
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1594
    :cond_53
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "captivate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1595
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1597
    :cond_54
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mytouch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sapphire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1598
    :cond_55
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1600
    :cond_56
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xt701"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1601
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1603
    :cond_57
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "milestone2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1604
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1606
    :cond_58
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "meizu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1607
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1609
    :cond_59
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "charm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umts_basil"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1610
    :cond_5a
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1612
    :cond_5b
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "defy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jordan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1613
    :cond_5c
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1615
    :cond_5d
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gt540"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1616
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1618
    :cond_5e
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gw620"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1619
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1621
    :cond_5f
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "u8150"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_60

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "comet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1622
    :cond_60
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1624
    :cond_61
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wildfire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "marvel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1625
    :cond_62
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1627
    :cond_63
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sensation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pyramid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1628
    :cond_64
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1630
    :cond_65
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tattoo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1631
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1633
    :cond_66
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "magic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1634
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1636
    :cond_67
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "desire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1637
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1639
    :cond_68
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gooapple"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1640
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1642
    :cond_69
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "blade"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1643
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1645
    :cond_6a
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "n720"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1646
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1648
    :cond_6b
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "310"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1649
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1651
    :cond_6c
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "arc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anzu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1652
    :cond_6d
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1654
    :cond_6e
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t989"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1655
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1657
    :cond_6f
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "arc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anzu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1658
    :cond_70
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1660
    :cond_71
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sph"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_72

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "d710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1661
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1663
    :cond_72
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_73

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "i9001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1664
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1666
    :cond_73
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1667
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1669
    :cond_74
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "galaxy5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1670
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1672
    :cond_75
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "optimus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_76

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    :cond_76
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lw690"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1673
    :cond_77
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1675
    :cond_78
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vortex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 1676
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1678
    :cond_79
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "streak"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1679
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1681
    :cond_7a
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7b

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "s2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1682
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1684
    :cond_7b
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i9100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1685
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1687
    :cond_7c
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hero"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1688
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1690
    :cond_7d
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m250k"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1691
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1693
    :cond_7e
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m250l"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1694
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1696
    :cond_7f
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "02c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1697
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1699
    :cond_80
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i9103"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1700
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1702
    :cond_81
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i9100t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1703
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1705
    :cond_82
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "galaxys2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1706
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1708
    :cond_83
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "galaxy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_84

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tab"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1709
    :cond_84
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1711
    :cond_85
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gt-s6102"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_86

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_86

    .line 1712
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1714
    :cond_86
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "p500"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1715
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1717
    :cond_87
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "a9292"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1718
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1720
    :cond_88
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pb76100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1721
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1723
    :cond_89
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ms690"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1724
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1726
    :cond_8a
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "s5360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1727
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1729
    :cond_8b
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "galaxy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8c

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "note"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 1730
    :cond_8c
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sgh-i717"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 1731
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gt-n7000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 1732
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gt-n7003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 1733
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "p6800"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 1734
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i9220"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 1735
    :cond_8d
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    .line 1737
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i717"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_8e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 1739
    :cond_8e
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordAfterCallStart:Z

    .line 1740
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioFormat:I

    .line 1742
    const-string v1, "recording_after_start_call_bool"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordAfterCallStart:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1743
    const-string v1, "audio_format"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1745
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1749
    :cond_8f
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1317m"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1750
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1752
    :cond_90
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "n7100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1753
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1755
    :cond_91
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i9250"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_92

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_92

    .line 1756
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1758
    :cond_92
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lt25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1759
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1761
    :cond_93
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gt-b5512"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1762
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1764
    :cond_94
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 1765
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e973"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_96

    :cond_95
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "f180"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 1766
    :cond_96
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    .line 1767
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordAfterCallStart:Z

    goto/16 :goto_1

    .line 1769
    :cond_97
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->checkForS3()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 1770
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    .line 1772
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i9300"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 1773
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    .line 1775
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_98

    invoke-static {}, Lcom/killermobile/Root;->isDeviceRooted()Z

    move-result v1

    if-nez v1, :cond_98

    .line 1776
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    .line 1781
    :cond_98
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1747"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_99

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "i747"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9a

    :cond_99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_9a

    .line 1782
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    .line 1785
    :cond_9a
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "l710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_9b

    .line 1786
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    .line 1789
    :cond_9b
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SPH-L710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_9c

    .line 1790
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    .line 1792
    :cond_9c
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i535"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1793
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1798
    :cond_9d
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I

    goto/16 :goto_1

    .line 1810
    :cond_9e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->lastMeaningfulCallSetting:Lcom/killermobile/totalrecall/s2/trial/CallType;

    goto/16 :goto_2

    .line 1225
    .restart local v13       #key:Ljava/lang/String;
    .restart local v15       #value:Ljava/lang/String;
    :catch_20
    move-exception v1

    goto/16 :goto_3
.end method

.method private runAsRoot([Ljava/lang/String;)V
    .locals 7
    .parameter "cmds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2135
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "su"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 2136
    .local v1, p:Ljava/lang/Process;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2137
    .local v0, os:Ljava/io/DataOutputStream;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 2140
    const-string v3, "exit\n"

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2141
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 2142
    return-void

    .line 2137
    :cond_0
    aget-object v2, p1, v3

    .line 2138
    .local v2, tmpCmd:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private scheduleAutoReset(J)V
    .locals 8
    .parameter "interval"

    .prologue
    .line 1147
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.killermobile.totalrecall.AutoResetService"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1148
    .local v7, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1149
    .local v6, operation:Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1150
    .local v0, alarm:Landroid/app/AlarmManager;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 1151
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1155
    :goto_0
    return-void

    .line 1153
    :cond_0
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setCallDestination(I)V
    .locals 0
    .parameter "dest"

    .prologue
    .line 91
    sput p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->CALL_DESTINATION:I

    .line 92
    return-void
.end method

.method public static setCallNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 114
    sput-object p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->CALL_NUMBER:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static setNumChecksPassed(Z)V
    .locals 0
    .parameter "passed"

    .prologue
    .line 102
    sput-boolean p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->NUM_CHECKS_PASSED:Z

    .line 103
    return-void
.end method

.method private startOomAdj()V
    .locals 12

    .prologue
    .line 2083
    iget-boolean v8, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->rootNiceValue:Z

    if-nez v8, :cond_0

    .line 2132
    :goto_0
    return-void

    .line 2085
    :cond_0
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "next_oom_adj"

    const-wide/16 v10, -0x1

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2086
    .local v2, nextLaunch:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2088
    .local v4, now:J
    cmp-long v8, v2, v4

    if-gez v8, :cond_1

    .line 2090
    const-wide/32 v8, 0x36ee80

    add-long v6, v4, v8

    .line 2092
    .local v6, schedule:J
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2093
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v8, "next_oom_adj"

    invoke-interface {v1, v8, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2094
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2096
    new-instance v8, Ljava/util/Timer;

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    new-instance v9, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$4;

    invoke-direct {v9, p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V

    .line 2103
    sub-long v10, v6, v4

    .line 2096
    invoke-virtual {v8, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2107
    const/4 v8, 0x7

    :try_start_0
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "counter=3600"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "while [ $counter -gt 0 ]"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 2108
    const-string v10, "do"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 2109
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "echo \'-17\' > /proc/`pidof "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "`/oom_adj"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 2110
    const-string v10, "sleep 1"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 2111
    const-string v10, "counter=`expr $counter - 1`"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 2112
    const-string v10, "done;"

    aput-object v10, v8, v9

    .line 2107
    invoke-direct {p0, v8}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->runAsRoot([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2113
    :catch_0
    move-exception v0

    .line 2115
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 2122
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v6           #schedule:J
    :cond_1
    new-instance v8, Ljava/util/Timer;

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    new-instance v9, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$5;

    invoke-direct {v9, p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$5;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V

    .line 2129
    sub-long v10, v2, v4

    .line 2122
    invoke-virtual {v8, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0
.end method


# virtual methods
.method getFileName(Ljava/lang/String;Lcom/killermobile/totalrecall/s2/trial/CallType;)Ljava/lang/String;
    .locals 12
    .parameter "phone"
    .parameter "type"

    .prologue
    .line 1816
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1817
    .local v9, name:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->now:Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1818
    const-string v11, ""

    .line 1819
    .local v11, pfx:Ljava/lang/String;
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1830
    :goto_0
    :pswitch_0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useDateForRecord:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy_MM_dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->now:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    :cond_0
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useTimeForRecord:Z

    if-eqz v0, :cond_1

    .line 1835
    const-string v0, "_"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    const-string v0, "kk-mm-ss"

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->now:Ljava/util/GregorianCalendar;

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1839
    :cond_1
    const/4 v7, 0x0

    .line 1841
    .local v7, contactName:Ljava/lang/String;
    const/16 v0, 0x5f

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1843
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useContactNameForRecord:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq p2, v0, :cond_3

    .line 1846
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_4

    .line 1847
    if-eqz p1, :cond_3

    .line 1848
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->PHONE_PROJECTION_NAME:[Ljava/lang/String;

    const-string v3, "number=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1849
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1850
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1851
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1853
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    :goto_1
    if-eqz v7, :cond_5

    .end local v7           #contactName:Ljava/lang/String;
    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "*"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "#"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\'"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1871
    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1870
    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1873
    .end local v9           #name:Ljava/lang/StringBuilder;
    .local v10, name:Ljava/lang/StringBuilder;
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioFormat:I

    sparse-switch v0, :sswitch_data_0

    .line 1893
    :goto_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->destination:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/killermobile/totalrecall/s2/trial/Utils;->getIncrementedFileName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1821
    .end local v10           #name:Ljava/lang/StringBuilder;
    .restart local v9       #name:Ljava/lang/StringBuilder;
    :pswitch_1
    const-string v11, "In_"

    .line 1822
    goto/16 :goto_0

    .line 1824
    :pswitch_2
    const-string v11, "Out_"

    .line 1825
    goto/16 :goto_0

    .line 1827
    :pswitch_3
    const-string v11, "Record_"

    goto/16 :goto_0

    .line 1857
    .restart local v7       #contactName:Ljava/lang/String;
    :cond_4
    :try_start_1
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1858
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1859
    .restart local v6       #c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1860
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto/16 :goto_1

    .line 1863
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 1864
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1868
    .end local v8           #e:Ljava/lang/Exception;
    :cond_5
    if-eqz p1, :cond_6

    move-object v7, p1

    goto/16 :goto_2

    :cond_6
    const-string v7, ""

    goto/16 :goto_2

    .line 1876
    .end local v7           #contactName:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/StringBuilder;
    .restart local v10       #name:Ljava/lang/StringBuilder;
    :sswitch_0
    const-string v0, ".3gp"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1880
    :sswitch_1
    const-string v0, ".mp4"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1884
    :sswitch_2
    const-string v0, ".amr"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1888
    :sswitch_3
    const-string v0, ".wav"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1819
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1873
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xfa4 -> :sswitch_3
    .end sparse-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1033
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1035
    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;)V

    iput-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->m_startRecordingHandler:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;

    .line 1037
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->readDB()V

    .line 1039
    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/WizardState;

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    invoke-direct {v4, p0, v5}, Lcom/killermobile/totalrecall/s2/trial/WizardState;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V

    iput-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->wizardState:Lcom/killermobile/totalrecall/s2/trial/WizardState;

    .line 1041
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1042
    .local v1, pm:Landroid/os/PowerManager;
    const v4, 0x1000001a

    const-class v5, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->wl:Landroid/os/PowerManager$WakeLock;

    .line 1044
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioManager:Landroid/media/AudioManager;

    .line 1046
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->contentResolver:Landroid/content/ContentResolver;

    .line 1048
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 1049
    .local v3, state:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1051
    .local v2, reason:Ljava/lang/String;
    const-string v4, "bad_removal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1053
    iput-boolean v6, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z

    .line 1054
    const-string v2, "Media card not present."

    .line 1097
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;

    sget-object v5, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq v4, v5, :cond_a

    iget-boolean v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z

    if-eqz v4, :cond_a

    .line 1098
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notifyEnabled()V

    .line 1104
    :cond_1
    :goto_1
    :try_start_0
    iget-boolean v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictNotificationOn:Z

    if-eqz v4, :cond_b

    .line 1105
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V

    .line 1106
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->showNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    :goto_2
    :try_start_1
    iget-boolean v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->manualRecordingNotif:Z

    if-eqz v4, :cond_c

    .line 1117
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V

    .line 1118
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->showNotification(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1127
    :goto_3
    iput-boolean v7, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->justStarted:Z

    .line 1129
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->startOomAdj()V

    .line 1131
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.killermobile.totalrecall.QuickRecorderWidget.FORCE_REFRESH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1133
    iget-boolean v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoResetService:Z

    if-eqz v4, :cond_d

    const-wide/32 v4, 0x112a880

    :goto_4
    invoke-direct {p0, v4, v5}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->scheduleAutoReset(J)V

    .line 1135
    return-void

    .line 1056
    :cond_2
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1058
    iput-boolean v6, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z

    .line 1059
    const-string v2, "Media card is being checked."

    goto :goto_0

    .line 1061
    :cond_3
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1063
    iput-boolean v7, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z

    goto :goto_0

    .line 1065
    :cond_4
    const-string v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1067
    iput-boolean v6, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z

    .line 1068
    const-string v2, "Media card is mounted read-only."

    goto :goto_0

    .line 1070
    :cond_5
    const-string v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1072
    iput-boolean v6, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z

    .line 1073
    const-string v2, "Media card is blank or using unsupported filesystem."

    goto :goto_0

    .line 1075
    :cond_6
    const-string v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1077
    iput-boolean v6, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z

    .line 1078
    const-string v2, "Media card not present."

    goto/16 :goto_0

    .line 1080
    :cond_7
    const-string v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1082
    iput-boolean v6, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z

    .line 1083
    const-string v2, "Media card is shared via USB."

    goto/16 :goto_0

    .line 1085
    :cond_8
    const-string v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1087
    iput-boolean v6, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z

    .line 1088
    const-string v2, "Media card is corrupted."

    goto/16 :goto_0

    .line 1090
    :cond_9
    const-string v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1092
    iput-boolean v6, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z

    .line 1093
    const-string v2, "Media card is not mounted."

    goto/16 :goto_0

    .line 1099
    :cond_a
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;

    sget-object v5, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq v4, v5, :cond_1

    .line 1100
    invoke-direct {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notifyDisabled(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1108
    :cond_b
    :try_start_2
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V

    .line 1109
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 1120
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_c
    :try_start_3
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V

    .line 1121
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 1123
    :catch_1
    move-exception v0

    .line 1124
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 1133
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_d
    const-wide/16 v4, 0x0

    goto/16 :goto_4
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1138
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1139
    return-void
.end method

.method promptForSave()V
    .locals 3

    .prologue
    .line 1962
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1964
    .local v0, msg:Landroid/content/Intent;
    const-string v1, "com.killermobile.totalrecall.Boza.FILENAME"

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1965
    const-string v1, "com.killermobile.totalrecall.Boza.CALLTYPE"

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordingType:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1966
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1968
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->startActivity(Landroid/content/Intent;)V

    .line 1969
    return-void
.end method

.method updateSetting(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->contentValues:Landroid/content/ContentValues;

    monitor-enter v1

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->contentValues:Landroid/content/ContentValues;

    const-string v2, "key"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->contentValues:Landroid/content/ContentValues;

    const-string v2, "value"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "global_settings"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->contentValues:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key = \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "global_settings"

    const-string v3, "key"

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1010
    monitor-exit v1

    .line 1019
    return-void

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
