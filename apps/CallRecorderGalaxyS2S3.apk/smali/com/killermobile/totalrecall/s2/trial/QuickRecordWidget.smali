.class public Lcom/killermobile/totalrecall/s2/trial/QuickRecordWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "QuickRecordWidget.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType:[I = null

.field private static final CLICK:Ljava/lang/String; = "com.killermobile.totalrecall.QuickRecorderWidget.CLICK"

.field public static final REFRESH:Ljava/lang/String; = "com.killermobile.totalrecall.QuickRecorderWidget.FORCE_REFRESH"


# direct methods
.method static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType()[I
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/QuickRecordWidget;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/CallType;->values()[Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/QuickRecordWidget;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private update(Landroid/content/Context;[I)V
    .locals 15
    .parameter "context"
    .parameter "ids"

    .prologue
    .line 49
    new-instance v12, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f03002a

    invoke-direct {v12, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 50
    .local v12, views:Landroid/widget/RemoteViews;
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getService()Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v10

    .line 51
    .local v10, service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    if-nez v10, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 55
    .local v4, current:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :try_start_0
    invoke-interface {v10}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCurrentState()I

    move-result v13

    invoke-static {v13}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 59
    :goto_1
    const v9, 0x7f02002d

    .line 60
    .local v9, rid:I
    const-string v11, "не доступно"

    .line 61
    .local v11, txt:Ljava/lang/String;
    const/4 v2, 0x0

    .line 62
    .local v2, attachClick:Z
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/QuickRecordWidget;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType()[I

    move-result-object v13

    invoke-virtual {v4}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 79
    :goto_2
    :pswitch_0
    const v13, 0x7f0a0103

    invoke-virtual {v12, v13, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 80
    const v13, 0x7f0a0102

    invoke-virtual {v12, v13, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 81
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    .line 82
    .local v7, mgr:Landroid/appwidget/AppWidgetManager;
    if-eqz v2, :cond_2

    .line 83
    new-instance v3, Landroid/content/Intent;

    const-string v13, "com.killermobile.totalrecall.QuickRecorderWidget.CLICK"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v3, clickintent:Landroid/content/Intent;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v3, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 85
    .local v8, pendingIntentClick:Landroid/app/PendingIntent;
    const v13, 0x7f0a0103

    invoke-virtual {v12, v13, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 88
    .end local v3           #clickintent:Landroid/content/Intent;
    .end local v8           #pendingIntentClick:Landroid/app/PendingIntent;
    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    array-length v13, v0

    if-nez v13, :cond_4

    .line 89
    :cond_3
    new-instance v13, Landroid/content/ComponentName;

    const-class v14, Lcom/killermobile/totalrecall/s2/trial/QuickRecordWidget;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v13}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p2

    .line 90
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v12}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_0

    .line 56
    .end local v2           #attachClick:Z
    .end local v7           #mgr:Landroid/appwidget/AppWidgetManager;
    .end local v9           #rid:I
    .end local v11           #txt:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 57
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 64
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v2       #attachClick:Z
    .restart local v9       #rid:I
    .restart local v11       #txt:Ljava/lang/String;
    :pswitch_1
    const v9, 0x7f020022

    .line 65
    const/4 v2, 0x1

    .line 66
    const-string v11, "Ожидание"

    .line 67
    goto :goto_2

    .line 70
    :pswitch_2
    const-string v11, "Запись"

    .line 71
    const v9, 0x7f02002d

    .line 72
    goto :goto_2

    .line 74
    :pswitch_3
    const v9, 0x7f02002f

    .line 75
    const/4 v2, 0x1

    .line 76
    const-string v11, "Запись"

    goto :goto_2

    .line 93
    .restart local v7       #mgr:Landroid/appwidget/AppWidgetManager;
    :cond_4
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    move-object/from16 v0, p2

    array-length v13, v0

    if-ge v6, v13, :cond_0

    .line 94
    aget v1, p2, v6

    .line 95
    .local v1, appWidgetId:I
    invoke-virtual {v7, v1, v12}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 93
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.killermobile.totalrecall.QuickRecorderWidget.CLICK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 24
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getService()Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v1

    .line 25
    .local v1, service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    if-nez v1, :cond_1

    .line 26
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->startService()V

    .line 41
    .end local v1           #service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    :cond_0
    :goto_0
    return-void

    .line 30
    .restart local v1       #service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCurrentState()I

    move-result v2

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v2

    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-ne v2, v3, :cond_2

    .line 31
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->stopRecording(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 33
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v2, ""

    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->startNewRecord(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 38
    .end local v1           #service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.killermobile.totalrecall.QuickRecorderWidget.FORCE_REFRESH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/killermobile/totalrecall/s2/trial/QuickRecordWidget;->update(Landroid/content/Context;[I)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter "context"
    .parameter "mgr"
    .parameter "appWidgetIds"

    .prologue
    .line 45
    invoke-direct {p0, p1, p3}, Lcom/killermobile/totalrecall/s2/trial/QuickRecordWidget;->update(Landroid/content/Context;[I)V

    .line 46
    return-void
.end method
