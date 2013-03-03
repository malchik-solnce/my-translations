.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 10
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const v9, 0x7f0a0051

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, callType:Lcom/killermobile/totalrecall/s2/trial/CallType;
    packed-switch p2, :pswitch_data_0

    .line 191
    :goto_0
    if-eqz v0, :cond_2

    .line 193
    sget-object v6, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq v0, v6, :cond_1

    .line 195
    :try_start_0
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isDictAutoStartRecording()Z

    move-result v2

    .line 196
    .local v2, dictAutoStart:Z
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isDictAutoStopRecording()Z

    move-result v3

    .line 197
    .local v3, dictAutoStop:Z
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isManualRecordingNotif()Z

    move-result v5

    .line 198
    .local v5, manRec:Z
    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    .line 199
    :cond_0
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStartRecording(Z)V

    .line 200
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStopRecording(Z)V

    .line 201
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const-string v7, "Dictaphone settings changed"

    const-string v8, "Dictaphone settings for auto start/stop has been turned off"

    #calls: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$1(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v2           #dictAutoStart:Z
    .end local v3           #dictAutoStop:Z
    .end local v5           #manRec:Z
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    .line 212
    .local v1, ct:I
    :try_start_1
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setCalls(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    .end local v1           #ct:I
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-virtual {v6}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->updateUI()V

    .line 219
    :goto_3
    return-void

    .line 154
    :pswitch_0
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 155
    goto :goto_0

    .line 159
    :pswitch_1
    const-string v6, "Droid"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "Milestone"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 160
    :cond_3
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const-string v7, "Total Recall"

    const-string v8, "This feature is disabled for your hardware"

    #calls: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$1(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->callsType:Landroid/widget/RadioGroup;
    invoke-static {v6}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$2(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/widget/RadioGroup;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_3

    .line 165
    :cond_4
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 166
    goto :goto_0

    .line 170
    :pswitch_2
    const-string v6, "Droid"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "Milestone"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 171
    :cond_5
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const-string v7, "Total Recall"

    const-string v8, "This feature is disabled for your hardware"

    #calls: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$1(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->callsType:Landroid/widget/RadioGroup;
    invoke-static {v6}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$2(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/widget/RadioGroup;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_3

    .line 176
    :cond_6
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 177
    goto/16 :goto_0

    .line 181
    :pswitch_3
    const-string v6, "Droid"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "Milestone"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 182
    :cond_7
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const-string v7, "Total Recall"

    const-string v8, "This feature is disabled for your hardware"

    #calls: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$1(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->callsType:Landroid/widget/RadioGroup;
    invoke-static {v6}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$2(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/widget/RadioGroup;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_3

    .line 187
    :cond_8
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    goto/16 :goto_0

    .line 205
    :catch_0
    move-exception v4

    .line 206
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 213
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v1       #ct:I
    :catch_1
    move-exception v4

    .line 214
    .restart local v4       #e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 150
    :pswitch_data_0
    .packed-switch 0x7f0a0051
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
