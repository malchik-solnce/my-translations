.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;
.super Landroid/app/AlertDialog;
.source "RecordsActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioDialog"
.end annotation


# instance fields
.field context:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

.field currentTime:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field mSeekBar:Landroid/widget/SeekBar;

.field mp:Landroid/media/MediaPlayer;

.field position:I

.field stop:Landroid/widget/Button;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;I)V
    .locals 4
    .parameter "context"
    .parameter "position"

    .prologue
    .line 773
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 759
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog$1;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;)V

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mHandler:Landroid/os/Handler;

    .line 774
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->context:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    .line 775
    iput p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->position:I

    .line 777
    invoke-virtual {p0, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 779
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 780
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f03000c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 781
    .local v1, view:Landroid/view/View;
    const-string v2, "Воспроизведение аудио"

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 782
    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->title:Landroid/widget/TextView;

    .line 783
    const v2, 0x7f0a0081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->currentTime:Landroid/widget/TextView;

    .line 784
    const v2, 0x7f0a0082

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mSeekBar:Landroid/widget/SeekBar;

    .line 785
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 786
    const v2, 0x7f0a0083

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->stop:Landroid/widget/Button;

    .line 787
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->stop:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->setView(Landroid/view/View;)V

    .line 789
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #view:Landroid/view/View;
    invoke-static {}, Lorg/appforce/ui/ThemedViews;->getCurrentTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appforce/ui/ThemedViews;->changeViewGroupTheme(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    .line 790
    return-void
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 821
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 823
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    .line 826
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->stop()V

    .line 838
    :try_start_0
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 793
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$5(I)V

    .line 794
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$6(Ljava/lang/String;)V

    .line 795
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->stop()V

    .line 797
    :try_start_0
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 798
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 814
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$5(I)V

    .line 815
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$6(Ljava/lang/String;)V

    .line 816
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->stop()V

    .line 817
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mediaPlayer"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->stop()V

    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    .line 803
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 804
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->position:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 805
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 806
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 829
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 833
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .parameter "seekBar"

    .prologue
    .line 869
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 870
    .local v1, pos:I
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 871
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 872
    .local v0, newPos:I
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 873
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 875
    .end local v0           #newPos:I
    :cond_0
    return-void
.end method

.method public prepare(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 845
    invoke-static {p1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$6(Ljava/lang/String;)V

    .line 847
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    .line 848
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 849
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 850
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 851
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 852
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->currentTime:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 854
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->title:Landroid/widget/TextView;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 857
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 858
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 866
    :goto_0
    return-void

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 861
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 862
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 863
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 864
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
