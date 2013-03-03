.class public Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IncomingReceiver.java"


# instance fields
.field private service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 22
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getService()Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v6

    iput-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    .line 23
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    if-nez v6, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, state:Ljava/lang/String;
    sget-object v6, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 31
    :try_start_0
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCalls()I

    move-result v6

    sget-object v7, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v7}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 32
    sget-object v6, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v6}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v6

    invoke-static {v6}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->setCallDestination(I)V

    .line 33
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->setCallNumber(Ljava/lang/String;)V

    .line 34
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->stopRecording(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :cond_2
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isDictAutoStopRecording()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 44
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->stopRecording(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v3

    .line 48
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 37
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 39
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 51
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_3
    sget-object v6, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 53
    sget-boolean v6, Lcom/killermobile/totalrecall/s2/trial/WizardState;->CURRENTLY_RECORDING:Z

    if-nez v6, :cond_0

    .line 56
    :try_start_2
    const-string v6, "incoming_number"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->setCallNumber(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 63
    :goto_2
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const-string v7, "incoming_number"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Lcom/killermobile/totalrecall/contacts/ContactsManager;->numberBasedRecordingAllowed(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->setNumChecksPassed(Z)V

    .line 64
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->isNumChecksPassed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    :try_start_3
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCalls()I

    move-result v6

    invoke-static {v6}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v1

    .line 69
    .local v1, calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    sget-object v6, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v6, v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v6, v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    :cond_4
    sget-object v6, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v6}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v6

    invoke-static {v6}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->setCallDestination(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 73
    .end local v1           #calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :catch_2
    move-exception v3

    .line 75
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 57
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v3

    .line 58
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 78
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    sget-object v6, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    sget-boolean v6, Lcom/killermobile/totalrecall/s2/trial/WizardState;->CURRENTLY_RECORDING:Z

    if-nez v6, :cond_0

    .line 84
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->isNumChecksPassed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    invoke-static {v7}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->setNumChecksPassed(Z)V

    .line 90
    :try_start_4
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isDictAutoStartRecording()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 91
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecordAfterCallStart()Z

    move-result v6

    if-nez v6, :cond_a

    .line 92
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->stopRecording(Z)V

    .line 93
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallNumber()Ljava/lang/String;

    move-result-object v6

    :goto_3
    sget-object v8, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v8}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v8

    invoke-interface {v7, v6, v8}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->startNewRecord(Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 105
    :catch_4
    move-exception v3

    .line 106
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 111
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_5
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCalls()I

    move-result v6

    sget-object v7, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v7}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v7

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCalls()I

    move-result v6

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallDestination()I

    move-result v7

    if-eq v6, v7, :cond_7

    .line 112
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCalls()I

    move-result v6

    sget-object v7, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v7}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 114
    :cond_7
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecordAfterCallStart()Z

    move-result v6

    if-nez v6, :cond_c

    .line 116
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallDestination()I

    move-result v2

    .line 118
    .local v2, dest:I
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->stopRecording(Z)V

    .line 119
    :cond_8
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/IncomingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallNumber()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-interface {v7, v6, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->startNewRecord(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 136
    .end local v2           #dest:I
    :catch_5
    move-exception v3

    .line 138
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 93
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_9
    :try_start_6
    const-string v6, ""

    goto :goto_3

    .line 97
    :cond_a
    const-string v6, "alarm"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 98
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v4, recIntent:Landroid/content/Intent;
    const-string v6, "action_start_user_rec"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const/4 v6, 0x1

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x1770

    add-long/2addr v7, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p1, v9, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 100
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 119
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v4           #recIntent:Landroid/content/Intent;
    .restart local v2       #dest:I
    :cond_b
    :try_start_7
    const-string v6, ""

    goto :goto_4

    .line 126
    .end local v2           #dest:I
    :cond_c
    const-string v6, "alarm"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 127
    .restart local v0       #am:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 128
    .restart local v4       #recIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallDestination()I

    move-result v6

    sget-object v7, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v7}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_e

    .line 129
    const-string v6, "action_start_in_rec"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :cond_d
    :goto_5
    const/4 v6, 0x1

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x258

    add-long/2addr v7, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p1, v9, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 132
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 130
    :cond_e
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallDestination()I

    move-result v6

    sget-object v7, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v7}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_d

    .line 131
    const-string v6, "action_start_out_rec"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5
.end method
