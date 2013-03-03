.class public Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;
.super Ljava/lang/Object;
.source "WAVRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;
    }
.end annotation


# static fields
.field private static final TIMER_INTERVAL:I = 0x78

.field public static WAV_FILE_PATH:Ljava/lang/String;


# instance fields
.field private aFormat:I

.field private aRecorder:Landroid/media/AudioRecord;

.field private aSource:I

.field private bSamples:S

.field private buffer:[B

.field private bufferSize:I

.field private duration:J

.field private fPath:Ljava/lang/String;

.field private fWriter:Ljava/io/RandomAccessFile;

.field private framePeriod:I

.field private mHandler:Landroid/os/Handler;

.field private mMaxDuration:J

.field private mMaxDurationEnabled:Z

.field private mMaxSize:I

.field private mMaxSizeEnabled:Z

.field private nChannels:S

.field private payloadSize:I

.field private sRate:I

.field private state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

.field private updateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->WAV_FILE_PATH:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8
    .parameter "audioSource"
    .parameter "sampleRate"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 20
    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fPath:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->updateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 105
    if-ne p4, v1, :cond_1

    .line 107
    const/16 v0, 0x10

    :try_start_0
    iput-short v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bSamples:S

    .line 114
    :goto_0
    if-ne p3, v1, :cond_2

    .line 116
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->nChannels:S

    .line 123
    :goto_1
    iput p1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aSource:I

    .line 124
    iput p2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->sRate:I

    .line 125
    iput p4, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aFormat:I

    .line 127
    mul-int/lit8 v0, p2, 0x78

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->framePeriod:I

    .line 128
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->framePeriod:I

    mul-int/lit8 v0, v0, 0x2

    iget-short v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bSamples:S

    mul-int/2addr v0, v1

    iget-short v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->nChannels:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bufferSize:I

    .line 129
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bufferSize:I

    invoke-static {p2, p3, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 131
    invoke-static {p2, p3, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bufferSize:I

    .line 133
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bufferSize:I

    iget-short v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bSamples:S

    mul-int/lit8 v1, v1, 0x2

    iget-short v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->nChannels:S

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    div-int/2addr v0, v1

    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->framePeriod:I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Увеличение размера буфера до "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bufferSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 137
    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bufferSize:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 138
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v7, :cond_3

    .line 139
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Ошибка инициализации аудиозаписи"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    move-exception v6

    .line 147
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 149
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 155
    :goto_2
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->ERROR:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    .line 157
    .end local v6           #e:Ljava/lang/Exception;
    :goto_3
    return-void

    .line 111
    :cond_1
    const/16 v0, 0x8

    :try_start_1
    iput-short v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bSamples:S

    goto/16 :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->nChannels:S

    goto/16 :goto_1

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->updateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    .line 141
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    iget v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->framePeriod:I

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fPath:Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->INITIALIZING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 153
    .restart local v6       #e:Ljava/lang/Exception;
    :cond_4
    const-string v0, "Произошла неизвестная ошибка при инициализации записи"

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    return-object v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Landroid/media/AudioRecord;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$10(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)J
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->duration:J

    return-wide v0
.end method

.method static synthetic access$11(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->framePeriod:I

    return v0
.end method

.method static synthetic access$12(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->duration:J

    return-void
.end method

.method static synthetic access$13(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)J
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mMaxDuration:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)[B
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->buffer:[B

    return-object v0
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Ljava/io/RandomAccessFile;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$4(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->payloadSize:I

    return v0
.end method

.method static synthetic access$5(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->payloadSize:I

    return-void
.end method

.method static synthetic access$6(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mMaxSizeEnabled:Z

    return v0
.end method

.method static synthetic access$8(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mMaxSize:I

    return v0
.end method

.method static synthetic access$9(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mMaxDurationEnabled:Z

    return v0
.end method


# virtual methods
.method public getState()Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    return-object v0
.end method

.method public prepare()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    :try_start_0
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->INITIALIZING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    if-ne v3, v4, :cond_3

    .line 188
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    if-ne v3, v1, :cond_0

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fPath:Ljava/lang/String;

    if-eqz v4, :cond_1

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 192
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fPath:Ljava/lang/String;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    .line 194
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fPath:Ljava/lang/String;

    sput-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->WAV_FILE_PATH:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 197
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    const-string v2, "RIFF"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 199
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    const-string v2, "WAVE"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    const-string v2, "fmt "

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 202
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 203
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    iget-short v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->nChannels:S

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 204
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->sRate:I

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 205
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->sRate:I

    iget-short v3, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bSamples:S

    mul-int/2addr v2, v3

    iget-short v3, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->nChannels:S

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 206
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    iget-short v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->nChannels:S

    iget-short v3, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bSamples:S

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 207
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    iget-short v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bSamples:S

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 208
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 211
    iget v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->framePeriod:I

    iget-short v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bSamples:S

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    iget-short v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->nChannels:S

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->buffer:[B

    .line 212
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->READY:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    .line 239
    :goto_2
    return-void

    :cond_0
    move v3, v2

    .line 188
    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto/16 :goto_1

    .line 216
    :cond_2
    const-string v1, "prepare() method called on uninitialized recorder"

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->ERROR:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 227
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 237
    :goto_3
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->ERROR:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    goto :goto_2

    .line 222
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string v1, "prepare() method called on illegal state"

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->release()V

    .line 224
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->ERROR:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 235
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_4
    const-string v1, "Произошла неизвестная ошибка в подготовке()"

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public release()V
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->RECORDING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    if-ne v1, v2, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->stop()V

    .line 263
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 267
    :cond_1
    return-void

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->READY:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    if-ne v1, v2, :cond_0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/io/IOException;
    const-string v1, "I/O исключений при закрытии выходного файла"

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 7

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->ERROR:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    if-eq v0, v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->release()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fPath:Ljava/lang/String;

    .line 277
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->duration:J

    .line 278
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aSource:I

    iget v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->sRate:I

    iget-short v3, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->nChannels:S

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aFormat:I

    iget v5, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->bufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 279
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->updateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    .line 280
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    iget v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->framePeriod:I

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    .line 281
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->INITIALIZING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v6

    .line 286
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->ERROR:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mHandler:Landroid/os/Handler;

    .line 346
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 3
    .parameter "argPath"

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->INITIALIZING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    if-ne v1, v2, :cond_0

    .line 165
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 178
    :goto_1
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->ERROR:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    goto :goto_0

    .line 176
    :cond_1
    const-string v1, "Неизвестная ошибка при установке выходного пути"

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setRestrictions(ZZJJ)V
    .locals 2
    .parameter "maxSizeEnabled"
    .parameter "maxDurationEnabled"
    .parameter "maxSize"
    .parameter "maxDuration"

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mMaxSizeEnabled:Z

    .line 351
    iput-boolean p2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mMaxDurationEnabled:Z

    .line 352
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p3, p4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mMaxSize:I

    .line 353
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->sRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p5

    iput-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mMaxDuration:J

    .line 355
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->READY:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    if-ne v0, v1, :cond_0

    .line 302
    iput v3, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->payloadSize:I

    .line 303
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 304
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->buffer:[B

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->buffer:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioRecord;->read([BII)I

    .line 305
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->RECORDING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    .line 312
    :goto_0
    return-void

    .line 309
    :cond_0
    const-string v0, "start() called on illegal state"

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->ERROR:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 316
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->RECORDING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    if-ne v1, v2, :cond_0

    .line 318
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 323
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->payloadSize:I

    add-int/lit8 v2, v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 325
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 326
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->payloadSize:I

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 328
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->STOPPED:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    .line 342
    :goto_1
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Ljava/io/IOException;
    const-string v1, "I/O exception occured while closing output file"

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 333
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->ERROR:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    goto :goto_0

    .line 340
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v1, "stop() called on illegal state"

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    goto :goto_1
.end method
