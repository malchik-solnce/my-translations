.class public Lcom/killermobile/totalrecall/s2/trial/MainActivity;
.super Lnet/robotmedia/billing/helper/AbstractBillingActivity;
.source "MainActivity.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$killermobile$regchecks$CheckResult$Result:[I = null

.field private static final DIALOG_RECORDING_STRATEGY:I = 0x8

.field private static final KEY_PASS_CHECKED:Ljava/lang/String; = "KEY_PASS_CHECKED"

.field public static final KEY_TAB_CONTENT:Ljava/lang/String; = "tab_content"

.field public static final KEY_TAB_HOST:Ljava/lang/String; = "tab_host"

.field private static final REQUEST_PASSWORD:I = 0x64

.field public static final TAB_AUDIO:Ljava/lang/String; = "tab_audio"

.field public static final TAB_RECORDS:Ljava/lang/String; = "tab_records"

.field public static final TAB_SERVICE:Ljava/lang/String; = "tab_service"

.field public static final TAB_WIZARD:Ljava/lang/String; = "tab_wizard"


# instance fields
.field private busyRegistering:Landroid/app/ProgressDialog;

.field private c:Landroid/database/Cursor;

.field private checkResult:Lcom/killermobile/regchecks/CheckResult;

.field private checkedPass:Z

.field private iTotalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

.field private volatile ongoingCheck:Z

.field private showedRecStrategiesDialog:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$killermobile$regchecks$CheckResult$Result()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->$SWITCH_TABLE$com$killermobile$regchecks$CheckResult$Result:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/killermobile/regchecks/CheckResult$Result;->values()[Lcom/killermobile/regchecks/CheckResult$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/killermobile/regchecks/CheckResult$Result;->EXPIRED:Lcom/killermobile/regchecks/CheckResult$Result;

    invoke-virtual {v1}, Lcom/killermobile/regchecks/CheckResult$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/killermobile/regchecks/CheckResult$Result;->LIFETIME:Lcom/killermobile/regchecks/CheckResult$Result;

    invoke-virtual {v1}, Lcom/killermobile/regchecks/CheckResult$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/killermobile/regchecks/CheckResult$Result;->TRIAL:Lcom/killermobile/regchecks/CheckResult$Result;

    invoke-virtual {v1}, Lcom/killermobile/regchecks/CheckResult$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->$SWITCH_TABLE$com$killermobile$regchecks$CheckResult$Result:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lnet/robotmedia/billing/helper/AbstractBillingActivity;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->ongoingCheck:Z

    .line 72
    iput-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkedPass:Z

    .line 83
    iput-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->showedRecStrategiesDialog:Z

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkTrial()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->iTotalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->busyRegistering:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->wizardPopup()V

    return-void
.end method

.method static synthetic access$4(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->requestTrialReset()V

    return-void
.end method

.method static synthetic access$5(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)Lcom/killermobile/regchecks/CheckResult;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkResult:Lcom/killermobile/regchecks/CheckResult;

    return-object v0
.end method

.method static synthetic access$7(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkFull()V

    return-void
.end method

.method private checkExpired()Z
    .locals 4

    .prologue
    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkResult:Lcom/killermobile/regchecks/CheckResult;

    invoke-virtual {v2}, Lcom/killermobile/regchecks/CheckResult;->getExpirationTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForPassword()V
    .locals 5

    .prologue
    .line 161
    iget-boolean v2, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkedPass:Z

    if-eqz v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkedPass:Z

    .line 163
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->KEY_PASSWORD:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, password:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 167
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v0           #e:Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkFull()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 626
    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkResult:Lcom/killermobile/regchecks/CheckResult;

    .line 627
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->setExpiration(Lcom/killermobile/regchecks/CheckResult;)V

    .line 628
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$16;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$16;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 634
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 636
    return-void
.end method

.method private checkTrial()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 413
    iput-boolean v3, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->ongoingCheck:Z

    .line 415
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$6;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 423
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getExpiration()Lcom/killermobile/regchecks/CheckResult;

    move-result-object v1

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkResult:Lcom/killermobile/regchecks/CheckResult;

    .line 425
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkResult:Lcom/killermobile/regchecks/CheckResult;

    if-nez v1, :cond_1

    .line 428
    :try_start_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->IMEI:Ljava/lang/String;

    invoke-static {v1}, Lcom/killermobile/regchecks/RegChecksAPI;->get(Ljava/lang/String;)Lcom/killermobile/regchecks/CheckResult;

    move-result-object v1

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkResult:Lcom/killermobile/regchecks/CheckResult;

    .line 430
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$7;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 438
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->$SWITCH_TABLE$com$killermobile$regchecks$CheckResult$Result()[I

    move-result-object v1

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkResult:Lcom/killermobile/regchecks/CheckResult;

    invoke-virtual {v2}, Lcom/killermobile/regchecks/CheckResult;->getResult()Lcom/killermobile/regchecks/CheckResult$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/regchecks/CheckResult$Result;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 514
    :goto_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkResult:Lcom/killermobile/regchecks/CheckResult;

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->setExpiration(Lcom/killermobile/regchecks/CheckResult;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 620
    :cond_0
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->ongoingCheck:Z

    .line 621
    return v3

    .line 440
    :pswitch_0
    :try_start_1
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$8;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$11;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 466
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_1
    :try_start_2
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$9;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 527
    :catch_1
    move-exception v0

    .line 528
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 529
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$12;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$12;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 486
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_3
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$10;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$10;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 543
    :cond_1
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$13;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$13;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 551
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->$SWITCH_TABLE$com$killermobile$regchecks$CheckResult$Result()[I

    move-result-object v1

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkResult:Lcom/killermobile/regchecks/CheckResult;

    invoke-virtual {v2}, Lcom/killermobile/regchecks/CheckResult;->getResult()Lcom/killermobile/regchecks/CheckResult$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/regchecks/CheckResult$Result;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 585
    :pswitch_3
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$15;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$15;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 554
    :pswitch_4
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$14;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$14;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 551
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fixCallRecording(Z)Z
    .locals 5
    .parameter "showUI"

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x1

    .line 196
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, model:Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "i9300"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-static {}, Lcom/killermobile/Root;->isDeviceRooted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-static {p0}, Lcom/killermobile/S3JBFix;->showUI(Landroid/content/Context;)Z

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    const-string v2, "gt-i9100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "sph-d710"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "777"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 208
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_4

    .line 209
    :cond_3
    invoke-static {}, Lcom/killermobile/Root;->isDeviceRooted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-static {p0}, Lcom/killermobile/S2CallRec;->showUI(Landroid/content/Context;)Z

    goto :goto_0

    .line 215
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v4, :cond_5

    const-string v2, "gt-i9100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    invoke-static {}, Lcom/killermobile/Root;->isDeviceRooted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 217
    if-eqz p1, :cond_0

    .line 218
    invoke-static {p0}, Lcom/killermobile/S2CallRec;->showUI(Landroid/content/Context;)Z

    goto :goto_0

    .line 225
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private performRecordingFix()V
    .locals 1

    .prologue
    .line 182
    invoke-static {p0}, Lcom/killermobile/S2CallRec;->cleanPrefs(Landroid/content/Context;)V

    .line 183
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->fixCallRecording(Z)Z

    .line 184
    return-void
.end method

.method private performRecordingRestore()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-static {p0}, Lcom/killermobile/S2CallRec;->cleanPrefs(Landroid/content/Context;)V

    .line 188
    invoke-static {p0}, Lcom/killermobile/S2CallRec;->restoreCallRecording(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "Библиотеки восстановлены"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v0, "Не удалось восстановить библиотеки"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private requestTrialReset()V
    .locals 1

    .prologue
    .line 332
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method private setupTab(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter "text"

    .prologue
    .line 176
    const v1, 0x7f030032

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0a011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-object v0
.end method

.method private wizardPopup()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method


# virtual methods
.method public getObfuscationSalt()[B
    .locals 1

    .prologue
    .line 645
    const-string v0, "getobfuscation"

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 646
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    const-string v0, "getpublickey"

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 652
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 146
    const-string v2, "com.killermobile.blackballer.PASSWORD"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, passwordEntered:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->KEY_PASSWORD:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, passwordPersisted:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    const-string v2, "Неверный пароль"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 151
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 155
    .end local v0           #passwordEntered:Ljava/lang/String;
    .end local v1           #passwordPersisted:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->finish()V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onBillingChecked(Z)V
    .locals 2
    .parameter "supported"

    .prologue
    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onbillingchecked, supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 87
    invoke-super {p0, p1}, Lnet/robotmedia/billing/helper/AbstractBillingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 93
    .local v0, tabHost:Landroid/widget/TabHost;
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    const-class v2, Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    const-string v3, "tab_host"

    invoke-virtual {v1, v2, v3, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->addTempStuff(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    const-class v2, Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    const-string v3, "tab_content"

    const v4, 0x1020011

    invoke-virtual {p0, v4}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->addTempStuff(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v1, "tab_service"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "Сервис"

    invoke-direct {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->setupTab(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 97
    const-string v1, "tab_audio"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "Аудио"

    invoke-direct {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->setupTab(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 98
    const-string v1, "tab_records"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "Записи"

    invoke-direct {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->setupTab(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 101
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sget-object v2, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-static {v1, v2}, Lorg/appforce/ui/ThemedViews;->setCurrentTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;)V

    .line 103
    sget-object v1, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-static {v0, v1}, Lorg/appforce/ui/ThemedViews;->changeThemedTabs(Landroid/widget/TabHost;Lorg/appforce/ui/ThemedViews$Theme;)V

    .line 105
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;Landroid/widget/TabHost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 115
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->busyRegistering:Landroid/app/ProgressDialog;

    .line 116
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->busyRegistering:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 117
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->busyRegistering:Landroid/app/ProgressDialog;

    const-string v2, "Регистрация..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->busyRegistering:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 120
    if-eqz p1, :cond_0

    const-string v1, "KEY_PASS_CHECKED"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkedPass:Z

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 124
    invoke-direct {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->fixCallRecording(Z)Z

    .line 126
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 271
    new-instance v2, Lorg/appforce/ui/ThemedDialog;

    invoke-direct {v2, p0}, Lorg/appforce/ui/ThemedDialog;-><init>(Landroid/content/Context;)V

    .line 273
    .local v2, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 305
    :goto_0
    return-object v2

    .line 276
    :pswitch_0
    const v3, 0x7f06005d

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 277
    const v3, 0x7f03001c

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 279
    const v3, 0x7f0a00c6

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 280
    .local v0, btnRecordingStrategy:Landroid/widget/Button;
    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/MainActivity$3;

    invoke-direct {v3, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v3, 0x7f0a00c7

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 290
    .local v1, checkBoxHideDialog:Landroid/widget/CheckBox;
    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/MainActivity$4;

    invoke-direct {v3, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 230
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v2, 0x7f09

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 232
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, model:Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    const v2, 0x7f0a0124

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 236
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->fixCallRecording(Z)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 394
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v0

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    const-string v2, "tab_host"

    invoke-virtual {v0, v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getTempStuff(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 395
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v0

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    const-string v2, "tab_content"

    invoke-virtual {v0, v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getTempStuff(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 397
    invoke-super {p0}, Lnet/robotmedia/billing/helper/AbstractBillingActivity;->onDestroy()V

    .line 398
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->busyRegistering:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->busyRegistering:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 400
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkForPassword()V

    .line 137
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 251
    invoke-super {p0, p1}, Lnet/robotmedia/billing/helper/AbstractBillingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 242
    :pswitch_0
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkFull()V

    goto :goto_0

    .line 245
    :pswitch_1
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->performRecordingFix()V

    goto :goto_0

    .line 248
    :pswitch_2
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->performRecordingRestore()V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0123
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 310
    instance-of v0, p2, Lorg/appforce/ui/ThemedDialog;

    if-eqz v0, :cond_0

    .line 311
    check-cast p2, Lorg/appforce/ui/ThemedDialog;

    .end local p2
    sget-object v0, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-static {p2, v0}, Lorg/appforce/ui/ThemedViews;->changeDialogTheme(Lorg/appforce/ui/ThemedDialog;Lorg/appforce/ui/ThemedViews$Theme;)V

    .line 312
    :cond_0
    return-void
.end method

.method public onPurchaseStateChanged(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V
    .locals 2
    .parameter "itemId"
    .parameter "state"

    .prologue
    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "purchase state changed, itemId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "purchase state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V
    .locals 0
    .parameter "itemId"
    .parameter "response"

    .prologue
    .line 671
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Lnet/robotmedia/billing/helper/AbstractBillingActivity;->onResume()V

    .line 257
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getService()Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->iTotalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    .line 259
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->ongoingCheck:Z

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 268
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 130
    const-string v0, "KEY_PASS_CHECKED"

    iget-boolean v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkedPass:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    invoke-super {p0, p1}, Lnet/robotmedia/billing/helper/AbstractBillingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method
