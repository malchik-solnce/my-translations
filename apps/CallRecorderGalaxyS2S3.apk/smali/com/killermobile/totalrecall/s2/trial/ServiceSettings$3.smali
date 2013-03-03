.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    .line 226
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 334
    :goto_0
    return-void

    .line 230
    :pswitch_0
    const-string v1, "Droid"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Milestone"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const-string v2, "Total Recall"

    const-string v3, "This feature is disabled for your hardware"

    #calls: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$1(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->callsType:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$2(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/widget/RadioGroup;

    move-result-object v1

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 237
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setManualRecordingNotif(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/BootReceiver;->checkForSequenceStrategy(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 249
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 250
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 251
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #calls: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->warnForAutoStart()V
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$3(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    goto :goto_0

    .line 256
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAutoStart(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 257
    :catch_1
    move-exception v0

    .line 259
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 269
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_2
    :try_start_2
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setPrompt(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 270
    :catch_2
    move-exception v0

    .line 272
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 280
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_3
    :try_start_3
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isAllowRecordViaSms()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    .line 281
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setSmsNotificationEnabled(Z)V

    .line 282
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showDialog(I)V

    .line 284
    :cond_3
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAllowRecordViaSms(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 285
    :catch_3
    move-exception v0

    .line 287
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 294
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_4
    :try_start_4
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setStatusBarHided(Z)V

    .line 295
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->notifyEnabled()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 296
    :catch_4
    move-exception v0

    .line 298
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 305
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_5
    :try_start_5
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setToastsAllowed(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 306
    :catch_5
    move-exception v0

    .line 307
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 315
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_6
    :try_start_6
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDontRecordWithBTHeadset(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 316
    :catch_6
    move-exception v0

    .line 317
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 325
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_7
    :try_start_7
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAutoResetService(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 326
    :catch_7
    move-exception v0

    .line 327
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0055
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
