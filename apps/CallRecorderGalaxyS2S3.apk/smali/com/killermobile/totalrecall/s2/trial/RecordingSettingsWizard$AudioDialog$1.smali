.class Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog$1;
.super Landroid/os/Handler;
.source "RecordingSettingsWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;

    .line 521
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 523
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 525
    .local v0, currentPos:I
    int-to-float v2, v0

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;

    iget-object v3, v3, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 526
    .local v1, i:I
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 527
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;->currentTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 530
    .end local v0           #currentPos:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method
