.class public Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;
.super Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;
.source "SettingsWizard.java"


# instance fields
.field private done:Landroid/widget/Button;

.field private recordAfterStartCall:Landroid/widget/CheckBox;

.field private speakerPhone:Landroid/widget/CheckBox;

.field private strategies:Landroid/widget/RadioGroup;

.field private streamSolo:Landroid/widget/CheckBox;

.field private wakeLock:Landroid/widget/CheckBox;

.field private yourModel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->strategies:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->wakeLock:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->recordAfterStartCall:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->speakerPhone:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$4(Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->streamSolo:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->setContentView(I)V

    .line 48
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    const-class v2, Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    const-string v3, "tab_host"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getTempStuff(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 49
    .local v0, th:Landroid/widget/TabHost;
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tab_wizard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const v1, 0x7f0a0068

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sget-object v2, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/appforce/ui/ThemedViews;->changeViewGroupTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;Z)V

    .line 52
    :cond_0
    const v1, 0x7f0a0069

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->yourModel:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0a006a

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->strategies:Landroid/widget/RadioGroup;

    .line 56
    const v1, 0x7f0a006e

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->wakeLock:Landroid/widget/CheckBox;

    .line 58
    const v1, 0x7f0a006f

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->recordAfterStartCall:Landroid/widget/CheckBox;

    .line 60
    const v1, 0x7f0a0070

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->speakerPhone:Landroid/widget/CheckBox;

    .line 62
    const v1, 0x7f0a0071

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->streamSolo:Landroid/widget/CheckBox;

    .line 64
    const v1, 0x7f0a0072

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->done:Landroid/widget/Button;

    .line 66
    return-void
.end method

.method protected updateUI()V
    .locals 8

    .prologue
    .line 71
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->yourModel:Landroid/widget/TextView;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :try_start_0
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getRecorderAudioSource()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 76
    .local v4, stream:I
    packed-switch v4, :pswitch_data_0

    .line 93
    .end local v4           #stream:I
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecordingWakeLock()Z

    move-result v0

    .line 94
    .local v0, acquired:Z
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->wakeLock:Landroid/widget/CheckBox;

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .end local v0           #acquired:Z
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecordAfterCallStart()Z

    move-result v1

    .line 101
    .local v1, afterStart:Z
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->recordAfterStartCall:Landroid/widget/CheckBox;

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    .end local v1           #afterStart:Z
    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isSpeakerPhone()Z

    move-result v3

    .line 108
    .local v3, speakerOn:Z
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->speakerPhone:Landroid/widget/CheckBox;

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 114
    .end local v3           #speakerOn:Z
    :goto_3
    :try_start_4
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isStreamSolo()Z

    move-result v5

    .line 115
    .local v5, streamS:Z
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->streamSolo:Landroid/widget/CheckBox;

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 120
    .end local v5           #streamS:Z
    :goto_4
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->done:Landroid/widget/Button;

    new-instance v7, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;

    invoke-direct {v7, p0}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void

    .line 78
    .restart local v4       #stream:I
    :pswitch_0
    :try_start_5
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->strategies:Landroid/widget/RadioGroup;

    const v7, 0x7f0a006b

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->check(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 87
    .end local v4           #stream:I
    :catch_0
    move-exception v2

    .line 88
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v4       #stream:I
    :pswitch_1
    :try_start_6
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->strategies:Landroid/widget/RadioGroup;

    const v7, 0x7f0a006c

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->strategies:Landroid/widget/RadioGroup;

    const v7, 0x7f0a006d

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->check(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 95
    .end local v4           #stream:I
    :catch_1
    move-exception v2

    .line 96
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 103
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 109
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    .line 110
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 116
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v2

    .line 117
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
