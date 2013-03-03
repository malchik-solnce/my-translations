.class public Lcom/killermobile/totalrecall/s2/trial/OutgoingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingReceiver.java"


# instance fields
.field private service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 17
    sget-boolean v3, Lcom/killermobile/totalrecall/s2/trial/WizardState;->CURRENTLY_RECORDING:Z

    if-eqz v3, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getService()Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v3

    iput-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/OutgoingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    .line 21
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/OutgoingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    if-eqz v3, :cond_0

    .line 26
    :try_start_0
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 28
    .local v2, phone:Ljava/lang/String;
    :try_start_1
    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tel:"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 32
    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->setCallNumber(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 41
    .end local v2           #phone:Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/OutgoingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/killermobile/totalrecall/contacts/ContactsManager;->numberBasedRecordingAllowed(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->setNumChecksPassed(Z)V

    .line 43
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->isNumChecksPassed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    :try_start_3
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/OutgoingReceiver;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCalls()I

    move-result v3

    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v0

    .line 65
    .local v0, calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v3, v0}, Lcom/killermobile/totalrecall/s2/trial/CallType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v3, v0}, Lcom/killermobile/totalrecall/s2/trial/CallType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    :cond_2
    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v3

    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->setCallDestination(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 71
    .end local v0           #calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 29
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #phone:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 30
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 34
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #phone:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 36
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
