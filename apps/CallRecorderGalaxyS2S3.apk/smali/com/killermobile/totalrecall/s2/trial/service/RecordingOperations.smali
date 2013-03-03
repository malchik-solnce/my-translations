.class public Lcom/killermobile/totalrecall/s2/trial/service/RecordingOperations;
.super Landroid/content/BroadcastReceiver;
.source "RecordingOperations.java"


# static fields
.field private static final ACTION_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_CONNECTED"

.field private static final ACTION_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECTED"

.field public static final ACTION_START_IN_REC:Ljava/lang/String; = "action_start_in_rec"

.field public static final ACTION_START_MANUAL_CALL_RECORD:Ljava/lang/String; = "action_start_manual_call_rec"

.field public static final ACTION_START_OUT_REC:Ljava/lang/String; = "action_start_out_rec"

.field public static final ACTION_START_USER_REC:Ljava/lang/String; = "action_start_user_rec"

.field public static final ACTION_STOP_DEMO_REC:Ljava/lang/String; = "action_stop_demo_rec"

.field public static final ACTION_STOP_REC:Ljava/lang/String; = "action_stop_rec"

.field public static final EXTRA_FORCE_STOP:Ljava/lang/String; = "extra_force_stop"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 33
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v3}, Lcom/killermobile/totalrecall/s2/trial/service/RecordingOperations;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    .line 35
    .local v2, service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    if-nez v2, :cond_1

    .line 36
    const-string v3, "Фоновая служба не работает или убита системой из-за низкой памяти. Откройте приложение один раз, чтобы обеспечить присутствие службы."

    invoke-static {p1, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "action_stop_rec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    const-string v3, "extra_force_stop"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 46
    .local v1, forceStop:Z
    :try_start_0
    invoke-interface {v2, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->stopRecording(Z)V

    .line 47
    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isSmsNotificationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->hideNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #forceStop:Z
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "action_stop_demo_rec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->stopRecording(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "action_start_user_rec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 65
    :try_start_2
    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->stopRecording(Z)V

    .line 66
    :cond_4
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallNumber()Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v4}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->startNewRecord(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 67
    :catch_2
    move-exception v0

    .line 68
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    :try_start_3
    const-string v3, ""
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 70
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "action_start_manual_call_rec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 73
    :try_start_4
    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->stopRecording(Z)V

    .line 74
    :cond_7
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallNumber()Ljava/lang/String;

    move-result-object v3

    :goto_2
    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v4}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->startNewRecord(Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 75
    :catch_3
    move-exception v0

    .line 76
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 74
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_8
    :try_start_5
    const-string v3, ""
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 78
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "action_start_in_rec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 81
    :try_start_6
    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->stopRecording(Z)V

    .line 82
    :cond_a
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallNumber()Ljava/lang/String;

    move-result-object v3

    :goto_3
    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v4}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->startNewRecord(Ljava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 83
    :catch_4
    move-exception v0

    .line 84
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 82
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_b
    :try_start_7
    const-string v3, ""
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 86
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "action_start_out_rec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 89
    :try_start_8
    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->stopRecording(Z)V

    .line 90
    :cond_d
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getCallNumber()Ljava/lang/String;

    move-result-object v3

    :goto_4
    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v4}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->startNewRecord(Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 91
    :catch_5
    move-exception v0

    .line 92
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 90
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_e
    :try_start_9
    const-string v3, ""
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    .line 94
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 95
    sget v3, Lcom/killermobile/totalrecall/s2/trial/WizardState;->attachedBTHeadsets:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/killermobile/totalrecall/s2/trial/WizardState;->attachedBTHeadsets:I

    goto/16 :goto_0

    .line 96
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    sget v3, Lcom/killermobile/totalrecall/s2/trial/WizardState;->attachedBTHeadsets:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/killermobile/totalrecall/s2/trial/WizardState;->attachedBTHeadsets:I

    goto/16 :goto_0
.end method
