.class Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;
.super Ljava/lang/Object;
.source "SettingsWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 125
    const/4 v0, -0x1

    .line 127
    .local v0, checkedStrategy:I
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->strategies:Landroid/widget/RadioGroup;
    invoke-static {v7}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->access$0(Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;)Landroid/widget/RadioGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 139
    :goto_0
    move v3, v0

    .line 140
    .local v3, recStrategy:I
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->wakeLock:Landroid/widget/CheckBox;
    invoke-static {v7}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->access$1(Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 141
    .local v6, wLock:Z
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->recordAfterStartCall:Landroid/widget/CheckBox;
    invoke-static {v7}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->access$2(Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 142
    .local v2, recAfterStart:Z
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->speakerPhone:Landroid/widget/CheckBox;
    invoke-static {v7}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->access$3(Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 143
    .local v4, speakerP:Z
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->streamSolo:Landroid/widget/CheckBox;
    invoke-static {v7}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->access$4(Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 145
    .local v5, streamS:Z
    const/4 v7, -0x1

    if-le v3, v7, :cond_0

    .line 147
    :try_start_0
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;

    iget-object v7, v7, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v7, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecorderAudioSource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;

    iget-object v7, v7, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v7, v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordingWakeLock(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :goto_2
    :try_start_2
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;

    iget-object v7, v7, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v7, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordAfterCallStart(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 166
    :goto_3
    :try_start_3
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;

    iget-object v7, v7, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v7, v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setSpeakerPhone(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 172
    :goto_4
    :try_start_4
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;

    iget-object v7, v7, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v7, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setStreamSolo(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 178
    :goto_5
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;

    invoke-virtual {v7}, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;->finish()V

    .line 221
    return-void

    .line 129
    .end local v2           #recAfterStart:Z
    .end local v3           #recStrategy:I
    .end local v4           #speakerP:Z
    .end local v5           #streamS:Z
    .end local v6           #wLock:Z
    :pswitch_0
    const/4 v0, 0x3

    .line 130
    goto :goto_0

    .line 132
    :pswitch_1
    const/4 v0, 0x4

    .line 133
    goto :goto_0

    .line 135
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 148
    .restart local v2       #recAfterStart:Z
    .restart local v3       #recStrategy:I
    .restart local v4       #speakerP:Z
    .restart local v5       #streamS:Z
    .restart local v6       #wLock:Z
    :catch_0
    move-exception v1

    .line 150
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v1           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 157
    .restart local v1       #e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 161
    .end local v1           #e1:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 163
    .restart local v1       #e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 167
    .end local v1           #e1:Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 169
    .restart local v1       #e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 173
    .end local v1           #e1:Landroid/os/RemoteException;
    :catch_4
    move-exception v1

    .line 175
    .restart local v1       #e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 127
    :pswitch_data_0
    .packed-switch 0x7f0a006b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
