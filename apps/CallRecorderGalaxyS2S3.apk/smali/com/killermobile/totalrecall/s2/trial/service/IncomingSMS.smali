.class public Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;
.super Landroid/content/BroadcastReceiver;
.source "IncomingSMS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final TRG_PREFIX_LEN:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final TRG_SEP_LEN:I = 0x0

.field private static final TRIGGER_PREFIX:Ljava/lang/String; = "TRK"

.field private static final TRIGGER_SEPARATOR:Ljava/lang/String; = "-"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "TRK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;->TRG_PREFIX_LEN:I

    .line 27
    const-string v0, "-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;->TRG_SEP_LEN:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;->TRG_PREFIX_LEN:I

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;->TRG_SEP_LEN:I

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "pdus"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 70
    .local v7, pdus:[Ljava/lang/Object;
    array-length v3, v7

    .line 71
    .local v3, count:I
    const/4 v13, 0x1

    if-ge v3, v13, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    new-array v6, v3, [[B

    .line 74
    .local v6, pduBytes:[[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-lt v5, v3, :cond_2

    .line 78
    const/4 v13, 0x0

    aget-object v13, v6, v13

    invoke-static {v13}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v9

    .line 80
    .local v9, sms:Landroid/telephony/SmsMessage;
    new-instance v13, Landroid/content/Intent;

    const-class v14, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    .line 81
    .local v8, service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    if-eqz v8, :cond_0

    .line 84
    :try_start_0
    invoke-interface {v8}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isAllowRecordViaSms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    if-eqz v13, :cond_0

    .line 86
    :try_start_1
    new-instance v12, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;-><init>(Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;Ljava/lang/String;)V

    .line 87
    .local v12, trigger:Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;
    invoke-virtual {v12, v8}, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->allowToProceed(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 88
    new-instance v10, Landroid/content/Intent;

    const-string v13, "action_stop_rec"

    invoke-direct {v10, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v10, stopRecIntent:Landroid/content/Intent;
    const-string v13, "extra_force_stop"

    const/4 v14, 0x1

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const/4 v13, 0x0

    const/high16 v14, 0x4000

    move-object/from16 v0, p1

    invoke-static {v0, v13, v10, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 91
    .local v11, stopRecPendingIntent:Landroid/app/PendingIntent;
    const-string v13, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 92
    .local v2, alarmManager:Landroid/app/AlarmManager;
    const/4 v13, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    #getter for: Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->durationInSec:I
    invoke-static {v12}, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->access$0(Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;)I

    move-result v16

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-virtual {v2, v13, v14, v15, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 93
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v14}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v14

    invoke-interface {v8, v13, v14}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->startNewRecord(Ljava/lang/String;I)V

    .line 94
    invoke-interface {v8}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isSmsNotificationEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    invoke-interface {v8, v13}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->showNotification(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 96
    .end local v2           #alarmManager:Landroid/app/AlarmManager;
    .end local v10           #stopRecIntent:Landroid/content/Intent;
    .end local v11           #stopRecPendingIntent:Landroid/app/PendingIntent;
    .end local v12           #trigger:Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;
    :catch_0
    move-exception v4

    .line 97
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 101
    .end local v4           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 103
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 75
    .end local v4           #e:Landroid/os/RemoteException;
    .end local v8           #service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    .end local v9           #sms:Landroid/telephony/SmsMessage;
    :cond_2
    aget-object v13, v7, v5

    check-cast v13, [B

    aput-object v13, v6, v5

    .line 74
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method
