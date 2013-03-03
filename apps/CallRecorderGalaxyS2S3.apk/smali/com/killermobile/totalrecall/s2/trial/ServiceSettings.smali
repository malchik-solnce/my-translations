.class public Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
.super Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;
.source "ServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType:[I = null

.field private static final DIALOG_AUTO_UPLOAD_MAIL_SETTINGS:I = 0xa

.field private static final DIALOG_AUTO_UPLOAD_SETTINGS:I = 0x9

.field private static final DIALOG_DICT_SETTINGS:I = 0x7

.field private static final DIALOG_ENTER_CURRENT_PASSWORD:I = 0x4

.field private static final DIALOG_ENTER_MAIL_SETTINGS:I = 0x5

.field private static final DIALOG_HELP:I = 0x6

.field private static final DIALOG_NEW_PASSWORD:I = 0x2

.field private static final DIALOG_NEW_RECOVERY_MAIL:I = 0x3

.field private static final DIALOG_RECORD_NAME_OPTIONS:I = 0xd

.field private static final DIALOG_RECORD_VIA_SMS_SETTINGS:I = 0x1

.field private static final DIALOG_SETTINGS_EXPORT_IMPORT:I = 0xc

.field private static final MESSAGE_CHECK_FAIL:I = 0x4

.field private static final MESSAGE_CHECK_OK:I = 0x3

.field private static final MESSAGE_SHOW_BUSY:I = 0x2


# instance fields
.field private autoResetService:Landroid/widget/CheckBox;

.field private autoStart:Landroid/widget/CheckBox;

.field private autoUploadSettings:Landroid/widget/Button;

.field private final btnClickListener:Landroid/view/View$OnClickListener;

.field private busySending:Landroid/app/ProgressDialog;

.field private callsType:Landroid/widget/RadioGroup;

.field private changePassword:Landroid/widget/Button;

.field private changeTheme:Landroid/widget/Button;

.field private final checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private dictSettings:Landroid/widget/Button;

.field private dontRecordBTHeadset:Landroid/widget/CheckBox;

.field private feedback:Landroid/widget/Button;

.field private help:Landroid/widget/Button;

.field private hideNotification:Landroid/widget/CheckBox;

.field private importExportSettings:Landroid/widget/Button;

.field private lastDialog:I

.field private manualCallRecording:Landroid/widget/CheckBox;

.field private numbersBasedRecording:Landroid/widget/Button;

.field private prompt:Landroid/widget/CheckBox;

.field private final radioGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private recordNameOptions:Landroid/widget/Button;

.field private recordViaSms:Landroid/widget/CheckBox;

.field private recordViaSmsSettings:Landroid/widget/Button;

.field private rootOom:Landroid/widget/Button;

.field private final sendRecoveryMailHandler:Landroid/os/Handler;

.field private showRecordingToasts:Landroid/widget/CheckBox;


# direct methods
.method static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType()[I
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType:[I

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
    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType:[I

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
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->lastDialog:I

    .line 102
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->sendRecoveryMailHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->radioGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 223
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1144
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->btnClickListener:Landroid/view/View$OnClickListener;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->busySending:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->callsType:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1323
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->warnForAutoStart()V

    return-void
.end method

.method static synthetic access$4(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->lastDialog:I

    return-void
.end method

.method static synthetic access$5(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->lastDialog:I

    return v0
.end method

.method static synthetic access$6(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->busySending:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$7(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->sendRecoveryMailHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoStart:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 143
    new-instance v0, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    invoke-direct {v0, p0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    const v1, 0x7f060022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 144
    return-void
.end method

.method private warnForAutoStart()V
    .locals 3

    .prologue
    .line 1324
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Автоапуск при загрузке системы"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1325
    const-string v1, "Рекомендуется оставить опцию \"Автозапуск\" включеным для Вашей модели устройства. Это позволит выполнять операции, которые улучшают качество звука в записи. Вы все еще хотите отключить ее?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1326
    const-string v1, "Отключить"

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$30;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$30;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1342
    const-string v1, "Отмена"

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$31;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$31;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1348
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1349
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 416
    invoke-super {p0, p1, p2, p3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 417
    invoke-static {p1, p2}, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->checkForLoginToast(II)V

    .line 418
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 339
    invoke-super {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 341
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->setContentView(I)V

    .line 343
    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->callsType:Landroid/widget/RadioGroup;

    .line 344
    const v0, 0x7f0a0057

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoStart:Landroid/widget/CheckBox;

    .line 345
    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->prompt:Landroid/widget/CheckBox;

    .line 346
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->recordViaSms:Landroid/widget/CheckBox;

    .line 347
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->hideNotification:Landroid/widget/CheckBox;

    .line 348
    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showRecordingToasts:Landroid/widget/CheckBox;

    .line 349
    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->dontRecordBTHeadset:Landroid/widget/CheckBox;

    .line 350
    const v0, 0x7f0a0055

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->manualCallRecording:Landroid/widget/CheckBox;

    .line 351
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoResetService:Landroid/widget/CheckBox;

    .line 353
    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoUploadSettings:Landroid/widget/Button;

    .line 354
    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->importExportSettings:Landroid/widget/Button;

    .line 355
    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->recordNameOptions:Landroid/widget/Button;

    .line 356
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->numbersBasedRecording:Landroid/widget/Button;

    .line 357
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->changeTheme:Landroid/widget/Button;

    .line 358
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->changePassword:Landroid/widget/Button;

    .line 359
    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->recordViaSmsSettings:Landroid/widget/Button;

    .line 360
    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->rootOom:Landroid/widget/Button;

    .line 361
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->dictSettings:Landroid/widget/Button;

    .line 362
    const v0, 0x7f0a0066

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->help:Landroid/widget/Button;

    .line 363
    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->feedback:Landroid/widget/Button;

    .line 365
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoUploadSettings:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->importExportSettings:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->recordNameOptions:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->numbersBasedRecording:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->changeTheme:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->changePassword:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->recordViaSmsSettings:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->rootOom:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->dictSettings:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->help:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->feedback:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 28
    .parameter "id"

    .prologue
    .line 421
    new-instance v8, Lorg/appforce/ui/ThemedDialog;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/appforce/ui/ThemedDialog;-><init>(Landroid/content/Context;)V

    .line 423
    .local v8, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 725
    .end local v8           #dialog:Landroid/app/Dialog;
    :goto_0
    :pswitch_0
    return-object v8

    .line 425
    .restart local v8       #dialog:Landroid/app/Dialog;
    :pswitch_1
    const v25, 0x7f03001b

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 426
    const-string v25, "Настройки"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 428
    const v25, 0x7f0a00c3

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 429
    .local v20, smsSettingsChangePassBtn:Landroid/widget/Button;
    const v25, 0x7f0a00c4

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 430
    .local v21, smsSettingsChangeRecMailBtn:Landroid/widget/Button;
    const v25, 0x7f0a00c5

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    .line 431
    .local v22, smsSettingsCloseBtn:Landroid/widget/Button;
    const v25, 0x7f0a00c1

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/CheckBox;

    .line 432
    .local v24, smsSettingsPassEnabled:Landroid/widget/CheckBox;
    const v25, 0x7f0a00c2

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/CheckBox;

    .line 434
    .local v23, smsSettingsNotifEnabled:Landroid/widget/CheckBox;
    new-instance v25, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$7;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$7;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 444
    new-instance v25, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/app/Dialog;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 467
    new-instance v19, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/widget/Button;)V

    .line 528
    .local v19, recordViaSmsClickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 536
    .end local v19           #recordViaSmsClickListener:Landroid/view/View$OnClickListener;
    .end local v20           #smsSettingsChangePassBtn:Landroid/widget/Button;
    .end local v21           #smsSettingsChangeRecMailBtn:Landroid/widget/Button;
    .end local v22           #smsSettingsCloseBtn:Landroid/widget/Button;
    .end local v23           #smsSettingsNotifEnabled:Landroid/widget/CheckBox;
    .end local v24           #smsSettingsPassEnabled:Landroid/widget/CheckBox;
    :pswitch_2
    const v25, 0x7f060048

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 537
    const v25, 0x7f030021

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 539
    const v25, 0x7f0a00d5

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 540
    .local v15, newPassEdit:Landroid/widget/EditText;
    const v25, 0x7f0a00d6

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 541
    .local v14, newPassBtnPos:Landroid/widget/Button;
    const v25, 0x7f0a00d7

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 543
    .local v13, newPassBtnNeg:Landroid/widget/Button;
    new-instance v25, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$10;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$10;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/widget/EditText;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    new-instance v25, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$11;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$11;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 564
    .end local v13           #newPassBtnNeg:Landroid/widget/Button;
    .end local v14           #newPassBtnPos:Landroid/widget/Button;
    .end local v15           #newPassEdit:Landroid/widget/EditText;
    :pswitch_3
    const v25, 0x7f06004c

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 565
    const v25, 0x7f030020

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 567
    const v25, 0x7f0a00d2

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    .line 568
    .local v18, newRecMailEdit:Landroid/widget/EditText;
    const v25, 0x7f0a00d3

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 569
    .local v17, newRecMailBtnPos:Landroid/widget/Button;
    const v25, 0x7f0a00d4

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 571
    .local v16, newRecMailBtnNeg:Landroid/widget/Button;
    new-instance v25, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$12;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$12;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/widget/EditText;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    new-instance v25, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$13;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$13;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 592
    .end local v16           #newRecMailBtnNeg:Landroid/widget/Button;
    .end local v17           #newRecMailBtnPos:Landroid/widget/Button;
    .end local v18           #newRecMailEdit:Landroid/widget/EditText;
    :pswitch_4
    const v25, 0x7f06003e

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 593
    const v25, 0x7f030016

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 595
    const v25, 0x7f0a00ae

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 596
    .local v4, currPassEdit:Landroid/widget/EditText;
    const v25, 0x7f0a00af

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 597
    .local v6, currPassPos:Landroid/widget/Button;
    const v25, 0x7f0a00b0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 598
    .local v5, currPassNeg:Landroid/widget/Button;
    const v25, 0x7f0a00b1

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 600
    .local v7, currPassRecover:Landroid/widget/Button;
    new-instance v25, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$14;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$14;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/widget/EditText;)V

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    new-instance v25, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$15;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$15;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    new-instance v25, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$16;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$16;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 637
    .end local v4           #currPassEdit:Landroid/widget/EditText;
    .end local v5           #currPassNeg:Landroid/widget/Button;
    .end local v6           #currPassPos:Landroid/widget/Button;
    .end local v7           #currPassRecover:Landroid/widget/Button;
    :pswitch_5
    const v25, 0x7f06004e

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 638
    const v25, 0x7f030017

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 640
    const v25, 0x7f0a00b2

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 641
    .local v12, enterMailSettUsername:Landroid/widget/EditText;
    const v25, 0x7f0a00b3

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 642
    .local v10, enterMailSettPass:Landroid/widget/EditText;
    const v25, 0x7f0a00b4

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 643
    .local v11, enterMailSettPos:Landroid/widget/Button;
    const v25, 0x7f0a00b5

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 645
    .local v9, enterMailSettNeg:Landroid/widget/Button;
    new-instance v25, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v10}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/widget/EditText;Landroid/widget/EditText;)V

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    new-instance v25, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$18;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$18;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 675
    .end local v9           #enterMailSettNeg:Landroid/widget/Button;
    .end local v10           #enterMailSettPass:Landroid/widget/EditText;
    .end local v11           #enterMailSettPos:Landroid/widget/Button;
    .end local v12           #enterMailSettUsername:Landroid/widget/EditText;
    :pswitch_6
    const-string v25, "Настройки диктафона"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 676
    const v25, 0x7f030015

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto/16 :goto_0

    .line 682
    :pswitch_7
    const-string v25, "Справка Total Recall"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 683
    const v25, 0x7f03001a

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 684
    const v25, 0x7f0a00c0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 685
    .local v3, backButton:Landroid/widget/Button;
    new-instance v25, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$19;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$19;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 694
    .end local v3           #backButton:Landroid/widget/Button;
    :pswitch_8
    const-string v25, "Настройки автовыгрузки"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 695
    const v25, 0x7f030011

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto/16 :goto_0

    .line 699
    :pswitch_9
    new-instance v25, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 700
    const v26, 0x7f060087

    invoke-virtual/range {v25 .. v26}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v25

    .line 701
    const v26, 0x7f060088

    invoke-virtual/range {v25 .. v26}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v25

    .line 702
    const v26, 0x7f06002f

    new-instance v27, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$20;

    invoke-direct/range {v27 .. v28}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$20;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    invoke-virtual/range {v25 .. v27}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v25

    .line 707
    const v26, 0x7f06002e

    new-instance v27, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$21;

    invoke-direct/range {v27 .. v28}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$21;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    invoke-virtual/range {v25 .. v27}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 715
    :pswitch_a
    const-string v25, "Настройки автоотпраки почтой"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 716
    const v25, 0x7f030010

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto/16 :goto_0

    .line 720
    :pswitch_b
    const-string v25, "Настройки файлов"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 721
    const v25, 0x7f03001f

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto/16 :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1255
    invoke-super {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onDestroy()V

    .line 1256
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->busySending:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->busySending:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1257
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 40
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 732
    packed-switch p1, :pswitch_data_0

    .line 1137
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1139
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/appforce/ui/ThemedDialog;

    if-eqz v2, :cond_1

    .line 1140
    check-cast p2, Lorg/appforce/ui/ThemedDialog;

    .end local p2
    sget-object v2, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lorg/appforce/ui/ThemedViews;->changeDialogTheme(Lorg/appforce/ui/ThemedDialog;Lorg/appforce/ui/ThemedViews$Theme;)V

    .line 1142
    :cond_1
    return-void

    .line 735
    .restart local p2
    :pswitch_1
    const v2, 0x7f0a00c1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/CheckBox;

    .line 736
    .local v33, smsSettingsPassEnabled:Landroid/widget/CheckBox;
    const v2, 0x7f0a00c2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/CheckBox;

    .line 738
    .local v32, smsSettingsNotifEnabled:Landroid/widget/CheckBox;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isSmsPasswordEnabled()Z

    move-result v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isSmsNotificationEnabled()Z

    move-result v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 740
    :catch_0
    move-exception v21

    .line 741
    .local v21, e1:Landroid/os/RemoteException;
    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 746
    .end local v21           #e1:Landroid/os/RemoteException;
    .end local v32           #smsSettingsNotifEnabled:Landroid/widget/CheckBox;
    .end local v33           #smsSettingsPassEnabled:Landroid/widget/CheckBox;
    :pswitch_2
    const v2, 0x7f0a00d1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 748
    .local v27, newRecMailCurrMail:Landroid/widget/TextView;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getRecoveryMail()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getRecoveryMail()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 749
    :catch_1
    move-exception v20

    .line 750
    .local v20, e:Landroid/os/RemoteException;
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 755
    .end local v20           #e:Landroid/os/RemoteException;
    .end local v27           #newRecMailCurrMail:Landroid/widget/TextView;
    :pswitch_3
    const v2, 0x7f0a00ae

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 756
    .local v15, currPassEdit:Landroid/widget/EditText;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 760
    .end local v15           #currPassEdit:Landroid/widget/EditText;
    :pswitch_4
    const v2, 0x7f0a00b2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/EditText;

    .line 761
    .local v24, enterMailSettUsername:Landroid/widget/EditText;
    const v2, 0x7f0a00b3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/EditText;

    .line 762
    .local v23, enterMailSettPass:Landroid/widget/EditText;
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 763
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 767
    .end local v23           #enterMailSettPass:Landroid/widget/EditText;
    .end local v24           #enterMailSettUsername:Landroid/widget/EditText;
    :pswitch_5
    const v2, 0x7f0a00d5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/EditText;

    .line 768
    .local v26, newPassEdit:Landroid/widget/EditText;
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 772
    .end local v26           #newPassEdit:Landroid/widget/EditText;
    :pswitch_6
    const/16 v18, 0x0

    .local v18, dictNotificationOn:Z
    const/16 v17, 0x0

    .local v17, dictAutoStopRecording:Z
    const/16 v16, 0x0

    .line 775
    .local v16, dictAutoStartRecording:Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isDictNotificationOn()Z

    move-result v18

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isDictAutoStopRecording()Z

    move-result v17

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isDictAutoStartRecording()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v16

    .line 782
    :goto_1
    const v2, 0x7f0a00aa

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/CheckBox;

    .line 783
    .local v31, showConstantNotif:Landroid/widget/CheckBox;
    const v2, 0x7f0a00ab

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 784
    .local v10, autoStartRecord:Landroid/widget/CheckBox;
    const v2, 0x7f0a00ac

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 786
    .local v11, autoStopRecord:Landroid/widget/CheckBox;
    const v2, 0x7f0a00ad

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Button;

    .line 788
    .local v30, saveChanges:Landroid/widget/Button;
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 789
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 790
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 792
    new-instance v19, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$22;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$22;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    .line 810
    .local v19, dictRecordingChecked:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 811
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 813
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v2, v0, v10, v11, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 778
    .end local v10           #autoStartRecord:Landroid/widget/CheckBox;
    .end local v11           #autoStopRecord:Landroid/widget/CheckBox;
    .end local v19           #dictRecordingChecked:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .end local v30           #saveChanges:Landroid/widget/Button;
    .end local v31           #showConstantNotif:Landroid/widget/CheckBox;
    :catch_2
    move-exception v20

    .line 779
    .restart local v20       #e:Landroid/os/RemoteException;
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 830
    .end local v16           #dictAutoStartRecording:Z
    .end local v17           #dictAutoStopRecording:Z
    .end local v18           #dictNotificationOn:Z
    .end local v20           #e:Landroid/os/RemoteException;
    :pswitch_7
    const v2, 0x7f0a0094

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    .line 831
    .local v14, autoUploadMailEnabled:Landroid/widget/CheckBox;
    const v2, 0x7f0a0095

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 832
    .local v13, autoUploadEvernoteEnabled:Landroid/widget/CheckBox;
    const v2, 0x7f0a0096

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 834
    .local v12, autoUploadDeleteGmailEvernoteRecord:Landroid/widget/CheckBox;
    const/16 v36, 0x0

    .line 835
    .local v36, uploadMailEnabled:Z
    const/16 v35, 0x0

    .line 836
    .local v35, uploadEvernoteEnabled:Z
    const/16 v34, 0x0

    .line 839
    .local v34, uploadAutoDelete:Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isAutoMailUploadEnabled()Z

    move-result v36

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isAutoEvernoteUploadEnabled()Z

    move-result v35

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isDeleteFileAfterGmailEvernoteUpload()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v34

    .line 846
    :goto_2
    move/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 847
    move/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 848
    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 850
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$24;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$24;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    invoke-virtual {v12, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 861
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$25;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$25;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    invoke-virtual {v13, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 909
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    invoke-virtual {v14, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 842
    :catch_3
    move-exception v20

    .line 843
    .restart local v20       #e:Landroid/os/RemoteException;
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 970
    .end local v12           #autoUploadDeleteGmailEvernoteRecord:Landroid/widget/CheckBox;
    .end local v13           #autoUploadEvernoteEnabled:Landroid/widget/CheckBox;
    .end local v14           #autoUploadMailEnabled:Landroid/widget/CheckBox;
    .end local v20           #e:Landroid/os/RemoteException;
    .end local v34           #uploadAutoDelete:Z
    .end local v35           #uploadEvernoteEnabled:Z
    .end local v36           #uploadMailEnabled:Z
    :pswitch_8
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 973
    .local v4, passwordEntered:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v28, 0x0

    .line 976
    .local v28, pass:Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getAutoMailUploadPassword()Ljava/lang/String;

    move-result-object v28

    .line 977
    if-eqz v28, :cond_2

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/Encryption;

    invoke-direct {v2}, Lcom/killermobile/totalrecall/s2/trial/Encryption;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v28

    .line 983
    :cond_2
    :goto_3
    move-object/from16 v8, v28

    .line 985
    .local v8, currentPassword:Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 987
    :cond_4
    const v2, 0x7f0a0090

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 988
    .local v5, autoUploadMailRecipient:Landroid/widget/EditText;
    const v2, 0x7f0a0091

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 989
    .local v6, autoUploadMailUsername:Landroid/widget/EditText;
    const v2, 0x7f0a0092

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 992
    .local v7, autoUploadMailPassword:Landroid/widget/EditText;
    :try_start_5
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/Encryption;

    invoke-direct {v2}, Lcom/killermobile/totalrecall/s2/trial/Encryption;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getAutoMailUploadRecipient()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 997
    :goto_4
    :try_start_6
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/Encryption;

    invoke-direct {v2}, Lcom/killermobile/totalrecall/s2/trial/Encryption;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getAutoMailUploadUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1001
    :goto_5
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    new-instance v25, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v8}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    .line 1040
    .local v25, mailFieldsWatcher:Landroid/text/TextWatcher;
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1041
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1042
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1044
    const v2, 0x7f0a0093

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1045
    .local v9, saveBtn:Landroid/widget/Button;
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Landroid/widget/Button;)V

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 978
    .end local v5           #autoUploadMailRecipient:Landroid/widget/EditText;
    .end local v6           #autoUploadMailUsername:Landroid/widget/EditText;
    .end local v7           #autoUploadMailPassword:Landroid/widget/EditText;
    .end local v8           #currentPassword:Ljava/lang/String;
    .end local v9           #saveBtn:Landroid/widget/Button;
    .end local v25           #mailFieldsWatcher:Landroid/text/TextWatcher;
    :catch_4
    move-exception v20

    .line 980
    .restart local v20       #e:Landroid/os/RemoteException;
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 993
    .end local v20           #e:Landroid/os/RemoteException;
    .restart local v5       #autoUploadMailRecipient:Landroid/widget/EditText;
    .restart local v6       #autoUploadMailUsername:Landroid/widget/EditText;
    .restart local v7       #autoUploadMailPassword:Landroid/widget/EditText;
    .restart local v8       #currentPassword:Ljava/lang/String;
    :catch_5
    move-exception v22

    .line 994
    .local v22, e2:Landroid/os/RemoteException;
    invoke-virtual/range {v22 .. v22}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 998
    .end local v22           #e2:Landroid/os/RemoteException;
    :catch_6
    move-exception v21

    .line 999
    .restart local v21       #e1:Landroid/os/RemoteException;
    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 1099
    .end local v4           #passwordEntered:Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v5           #autoUploadMailRecipient:Landroid/widget/EditText;
    .end local v6           #autoUploadMailUsername:Landroid/widget/EditText;
    .end local v7           #autoUploadMailPassword:Landroid/widget/EditText;
    .end local v8           #currentPassword:Ljava/lang/String;
    .end local v21           #e1:Landroid/os/RemoteException;
    .end local v28           #pass:Ljava/lang/String;
    :pswitch_9
    const v2, 0x7f0a00ce

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/CheckBox;

    .line 1100
    .local v37, useDateForRecord:Landroid/widget/CheckBox;
    const v2, 0x7f0a00cf

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/CheckBox;

    .line 1101
    .local v39, useTimeForRecord:Landroid/widget/CheckBox;
    const v2, 0x7f0a00d0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/CheckBox;

    .line 1104
    .local v38, useNameForRecord:Landroid/widget/CheckBox;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isUseDateForRecord()Z

    move-result v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isUseTimeForRecord()Z

    move-result v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isUseContactNameForRecord()Z

    move-result v2

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1111
    :goto_6
    new-instance v29, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$29;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$29;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    .line 1131
    .local v29, recordCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1132
    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1133
    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 1107
    .end local v29           #recordCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :catch_7
    move-exception v20

    .line 1108
    .restart local v20       #e:Landroid/os/RemoteException;
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 381
    invoke-super {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onResume()V

    .line 382
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-static {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->setupDictaphoneIfNeeded(Landroid/content/Context;Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isAutoEvernoteUploadEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Вы не вошли в Evernote"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 388
    const-string v2, "Ваша автозагрузка указывает, что Вы хотите автоматически загружать в Evernote, но вы не вошли в систему с последними API. Перейти на страницу входа или отключить загрузку в Evernote ?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 389
    const-string v2, "Войти"

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$5;

    invoke-direct {v3, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$5;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 395
    const-string v2, "Отменить автозагрузку"

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$6;

    invoke-direct {v3, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$6;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected updateUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1261
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->callsType:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1262
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoStart:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1263
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->prompt:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1264
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->recordViaSms:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1265
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->hideNotification:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1266
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showRecordingToasts:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1267
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->dontRecordBTHeadset:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1268
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoResetService:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1269
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->manualCallRecording:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1272
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCalls()I

    move-result v2

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v0

    .line 1273
    .local v0, calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1287
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->callsType:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 1291
    :goto_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoStart:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isAutoStart()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1292
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->prompt:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isPrompt()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1293
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->recordViaSms:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isAllowRecordViaSms()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1294
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->hideNotification:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isStatusBarHided()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1295
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showRecordingToasts:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isToastsAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1296
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->dontRecordBTHeadset:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isDontRecordWithBTHeadset()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1297
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoResetService:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isAutoResetService()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1298
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->manualCallRecording:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isManualRecordingNotif()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    .end local v0           #calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :goto_1
    const v2, 0x7f0a004f

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-static {v2, v3}, Lorg/appforce/ui/ThemedViews;->setCurrentTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1311
    :goto_2
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->callsType:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->radioGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1312
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoStart:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1313
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->prompt:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1314
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->recordViaSms:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1315
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->hideNotification:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1316
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showRecordingToasts:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1317
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->dontRecordBTHeadset:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1318
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoResetService:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1319
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->manualCallRecording:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1321
    return-void

    .line 1275
    .restart local v0       #calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :pswitch_0
    :try_start_2
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->callsType:Landroid/widget/RadioGroup;

    const v3, 0x7f0a0051

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1300
    .end local v0           #calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :catch_0
    move-exception v1

    .line 1302
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1278
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :pswitch_1
    :try_start_3
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->callsType:Landroid/widget/RadioGroup;

    const v3, 0x7f0a0052

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 1281
    :pswitch_2
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->callsType:Landroid/widget/RadioGroup;

    const v3, 0x7f0a0053

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 1284
    :pswitch_3
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->callsType:Landroid/widget/RadioGroup;

    const v3, 0x7f0a0054

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1307
    .end local v0           #calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :catch_1
    move-exception v1

    .line 1308
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
