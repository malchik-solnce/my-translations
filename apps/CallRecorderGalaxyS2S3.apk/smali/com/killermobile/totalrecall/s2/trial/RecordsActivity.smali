.class public Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;
.super Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;
.source "RecordsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;,
        Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;,
        Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ValidateChecksum;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$Record$Broken:[I = null

.field private static final DIALOG_AUDIO:I = 0x4

.field private static final DIALOG_DELETE:I = 0x2

.field private static final DIALOG_INFO:I = 0x5

.field private static final DIALOG_RENAME:I = 0x1

.field private static final DIALOG_SENDING_METHOD:I = 0x3

.field private static final EXTRA_SAVED_PLAYBACK_PATH:Ljava/lang/String; = "EXTRA_SAVED_PLAYBACK_PATH"

.field private static final EXTRA_SAVED_PLAYBACK_POSITION:Ljava/lang/String; = "EXTRA_SAVED_PLAYBACK_POSITION"

.field private static final REQUEST_DESTINATION:I = 0x1

.field private static final REQUEST_FIND:I = 0x2

.field private static playbackPath:Ljava/lang/String;

.field private static playbackPosition:I


# instance fields
.field private adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

.field private fileName:Ljava/lang/String;

.field private invalidAuthentication:Z

.field private listRecords:Landroid/widget/ListView;

.field private orderByCreationTime:Landroid/widget/Button;

.field private orderByDuration:Landroid/widget/Button;

.field private orderByName:Landroid/widget/Button;

.field private orderClickListener:Landroid/view/View$OnClickListener;

.field private pd:Landroid/app/ProgressDialog;

.field private final recordsListener:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;

.field private final refreshHandler:Landroid/os/Handler;

.field private search:Landroid/widget/AutoCompleteTextView;

.field private selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;


# direct methods
.method static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$Record$Broken()[I
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$Record$Broken:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->values()[Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->EXTENSION:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->MODIFIED:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->NOT_FOUND:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->WORKING:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$Record$Broken:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, -0x1

    sput v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->playbackPosition:I

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->playbackPath:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->pd:Landroid/app/ProgressDialog;

    .line 145
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->recordsListener:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;

    .line 156
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$2;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->refreshHandler:Landroid/os/Handler;

    .line 889
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderClickListener:Landroid/view/View$OnClickListener;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->refreshHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->search:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/Record;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    return-object v0
.end method

.method static synthetic access$11(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->sendEmail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->sendMMS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    return-void
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->listRecords:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    return-object v0
.end method

.method static synthetic access$5(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    sput p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->playbackPosition:I

    return-void
.end method

.method static synthetic access$6(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    sput-object p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->playbackPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->delete(Ljava/util/List;)V

    return-void
.end method

.method private delete(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/killermobile/totalrecall/s2/trial/Record;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, toDelete:Ljava/util/List;,"Ljava/util/List<Lcom/killermobile/totalrecall/s2/trial/Record;>;"
    if-eqz p1, :cond_0

    .line 435
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 453
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 455
    :cond_0
    return-void
.end method

.method private sendEmail(Ljava/lang/String;)V
    .locals 5
    .parameter "filePath"

    .prologue
    .line 676
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 677
    .local v1, msg:Landroid/content/Intent;
    const-string v2, "text/xml"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-static {p1}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getRecordName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string v2, "android.intent.extra.STREAM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 681
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_0
    return-void

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "Не найдено подходящего приложения"

    invoke-direct {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMMS(Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"

    .prologue
    .line 688
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v0, msg:Landroid/content/Intent;
    const-string v1, "sms_body"

    invoke-static {p1}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getRecordName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 692
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string v1, "Send via"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->startActivity(Landroid/content/Intent;)V

    .line 694
    return-void
.end method

.method private toastMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 745
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 746
    return-void
.end method

.method private uploadToEvernote(I)V
    .locals 2
    .parameter "format"

    .prologue
    const/4 v1, 0x0

    .line 458
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->login()V

    .line 465
    :goto_0
    return-void

    .line 462
    :cond_0
    const-string v0, "Выгрузка в evernote..."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 463
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->fileName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->post(Ljava/lang/String;IZ)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 699
    invoke-static {p1, p2}, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->checkForLoginToast(II)V

    .line 701
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 702
    if-ne p2, v5, :cond_0

    .line 703
    const-string v4, "com.killermobile.totalrecall.DestinationPickerDialog.SELECTION"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 704
    .local v3, sel:[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 705
    aget-object v1, v3, v6

    .line 707
    .local v1, newFileName:Ljava/lang/String;
    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ValidateChecksum;

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v5}, Lcom/killermobile/totalrecall/s2/trial/Record;->getChecksum()Ljava/lang/String;

    move-result-object v5

    .line 708
    new-instance v6, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$16;

    invoke-direct {v6, p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$16;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v6

    .line 707
    invoke-direct {v4, v5, v1, v6}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ValidateChecksum;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 719
    invoke-virtual {v4}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ValidateChecksum;->start()V

    .line 742
    .end local v1           #newFileName:Ljava/lang/String;
    .end local v3           #sel:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 725
    if-ne p2, v5, :cond_0

    .line 727
    const-string v4, "com.killermobile.totalrecall.DestinationPickerDialog.SELECTION"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 728
    .restart local v3       #sel:[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    .line 729
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v4}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, filePath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v3, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 731
    .restart local v1       #newFileName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/Record;->addObserver(Ljava/lang/String;Ljava/lang/String;)Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;

    move-result-object v2

    .line 732
    .local v2, observer:Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 733
    const-string v4, "Запись успешно перемещена"

    invoke-direct {p0, v4}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V

    .line 739
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #newFileName:Ljava/lang/String;
    .end local v2           #observer:Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->updateUI()V

    goto :goto_0

    .line 735
    .restart local v0       #filePath:Ljava/lang/String;
    .restart local v1       #newFileName:Ljava/lang/String;
    .restart local v2       #observer:Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
    :cond_3
    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->stopWatching()V

    .line 736
    const-string v4, "Ошибка перемещения записи"

    invoke-direct {p0, v4}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    .line 288
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 430
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 290
    :pswitch_0
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->showDialog(I)V

    goto :goto_0

    .line 295
    :pswitch_1
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->showDialog(I)V

    goto :goto_0

    .line 301
    :pswitch_2
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->showDialog(I)V

    goto :goto_0

    .line 306
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v9, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    invoke-direct {v1, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v1, destinationPicker:Landroid/content/Intent;
    const-string v9, "com.killermobile.totalrecall.DestinationPickerDialog.DIRECTORIES"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    const/4 v9, 0x1

    invoke-virtual {p0, v1, v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 314
    .end local v1           #destinationPicker:Landroid/content/Intent;
    :pswitch_4
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v9}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->sendEmail(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :pswitch_5
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v9}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCid()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v10}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/killermobile/totalrecall/s2/trial/Record;->delete(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 324
    :pswitch_6
    new-instance v3, Landroid/content/Intent;

    const-class v9, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    invoke-direct {v3, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    .local v3, findPicker:Landroid/content/Intent;
    const/4 v9, 0x2

    invoke-virtual {p0, v3, v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 331
    .end local v3           #findPicker:Landroid/content/Intent;
    :pswitch_7
    new-instance v9, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;

    iget-object v10, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    new-instance v11, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$5;

    invoke-direct {v11, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$5;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)V

    invoke-static {v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;-><init>(Lcom/killermobile/totalrecall/s2/trial/Record;Landroid/os/Message;)V

    .line 341
    invoke-virtual {v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;->start()V

    goto :goto_0

    .line 347
    :pswitch_8
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v9}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 348
    .local v8, path:Ljava/lang/String;
    const-string v2, ""

    .line 349
    .local v2, ext:Ljava/lang/String;
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v9}, Lcom/killermobile/totalrecall/s2/trial/Record;->getFormat()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 364
    :goto_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    const/16 v11, 0x2e

    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 365
    new-instance v9, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;

    iget-object v10, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    new-instance v11, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$6;

    invoke-direct {v11, p0, v8}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$6;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    invoke-static {v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v11

    .line 374
    const-wide/16 v12, 0x5dc

    .line 365
    invoke-direct {v9, v10, v11, v12, v13}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;-><init>(Lcom/killermobile/totalrecall/s2/trial/Record;Landroid/os/Message;J)V

    .line 374
    invoke-virtual {v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;->start()V

    goto/16 :goto_0

    .line 351
    :sswitch_0
    const-string v2, ".3gp"

    .line 352
    goto :goto_1

    .line 354
    :sswitch_1
    const-string v2, ".mp4"

    .line 355
    goto :goto_1

    .line 357
    :sswitch_2
    const-string v2, ".amr"

    .line 358
    goto :goto_1

    .line 360
    :sswitch_3
    const-string v2, ".wav"

    goto :goto_1

    .line 375
    :cond_0
    const-string v9, "Не удается исправить расширение"

    invoke-direct {p0, v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    .end local v2           #ext:Ljava/lang/String;
    .end local v8           #path:Ljava/lang/String;
    :pswitch_9
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 384
    :pswitch_a
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v9}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->fileName:Ljava/lang/String;

    .line 385
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v9}, Lcom/killermobile/totalrecall/s2/trial/Record;->getFormat()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->uploadToEvernote(I)V

    goto/16 :goto_0

    .line 389
    :pswitch_b
    const v9, 0x7f0a0038

    invoke-virtual {p0, v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 390
    .local v6, markerContainer:Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 391
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    invoke-virtual {v9}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->enableMarking()V

    .line 392
    const v9, 0x7f0a0039

    invoke-virtual {p0, v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 393
    .local v7, markerDone:Landroid/widget/Button;
    const v9, 0x7f0a003b

    invoke-virtual {p0, v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 395
    .local v5, markerCancel:Landroid/widget/Button;
    const v9, 0x7f0a003a

    invoke-virtual {p0, v9}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 396
    .local v4, markerAll:Landroid/widget/Button;
    new-instance v9, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;

    invoke-direct {v9, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$8;

    invoke-direct {v0, p0, v6}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$8;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Landroid/widget/LinearLayout;)V

    .line 424
    .local v0, cliListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x7f0a0127
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 349
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xfa4 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f060082

    .line 176
    invoke-super {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->setContentView(I)V

    .line 180
    const v1, 0x7f0a003c

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->listRecords:Landroid/widget/ListView;

    .line 182
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->listRecords:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    const v1, 0x7f0a0034

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderByName:Landroid/widget/Button;

    .line 185
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderByDuration:Landroid/widget/Button;

    .line 186
    const v1, 0x7f0a0036

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderByCreationTime:Landroid/widget/Button;

    .line 188
    const v1, 0x7f0a0037

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->search:Landroid/widget/AutoCompleteTextView;

    .line 190
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderByName:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderByName:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderByDuration:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderByDuration:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderByCreationTime:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderByCreationTime:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderByName:Landroid/widget/Button;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderByDuration:Landroid/widget/Button;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderByCreationTime:Landroid/widget/Button;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->orderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->listRecords:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 200
    if-eqz p1, :cond_0

    const-string v1, "EXTRA_SAVED_PLAYBACK_POSITION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 201
    const-string v1, "EXTRA_SAVED_PLAYBACK_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;

    const-string v1, "EXTRA_SAVED_PLAYBACK_POSITION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;I)V

    .line 203
    .local v0, a:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;
    const-string v1, "EXTRA_SAVED_PLAYBACK_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->prepare(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->show()V

    .line 206
    .end local v0           #a:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .local v0, inflater:Landroid/view/MenuInflater;
    move-object v1, p3

    .line 261
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 263
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/killermobile/totalrecall/s2/trial/Record;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    .line 265
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$Record$Broken()[I

    move-result-object v2

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getBroken()Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 283
    :goto_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getRecordName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 284
    return-void

    .line 267
    :pswitch_0
    const v2, 0x7f090005

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 271
    :pswitch_1
    const v2, 0x7f090004

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 275
    :pswitch_2
    const v2, 0x7f090003

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 279
    :pswitch_3
    const v2, 0x7f090002

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v10, 0x0

    .line 469
    new-instance v1, Lorg/appforce/ui/ThemedDialog;

    invoke-direct {v1, p0}, Lorg/appforce/ui/ThemedDialog;-><init>(Landroid/content/Context;)V

    .line 471
    .local v1, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 566
    :goto_0
    return-object v1

    .line 475
    :pswitch_0
    const-string v7, "Переименовать запись"

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 476
    const v7, 0x7f03002c

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 478
    const v7, 0x7f0a010d

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 479
    .local v2, newName:Landroid/widget/EditText;
    const v7, 0x7f0a010e

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 480
    .local v6, renameOk:Landroid/widget/Button;
    const v7, 0x7f0a010f

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 482
    .local v5, renameCancel:Landroid/widget/Button;
    new-instance v7, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$10;

    invoke-direct {v7, p0, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$10;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    new-instance v7, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$11;

    invoke-direct {v7, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$11;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 509
    .end local v2           #newName:Landroid/widget/EditText;
    .end local v5           #renameCancel:Landroid/widget/Button;
    .end local v6           #renameOk:Landroid/widget/Button;
    :pswitch_1
    const-string v7, "Удалить запись"

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 510
    const v7, 0x7f030014

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 511
    const v7, 0x7f0a00a8

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 512
    .local v3, okButton:Landroid/widget/Button;
    const v7, 0x7f0a00a9

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 513
    .local v0, cancelButton:Landroid/widget/Button;
    new-instance v7, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$12;

    invoke-direct {v7, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$12;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    new-instance v7, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$13;

    invoke-direct {v7, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$13;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 533
    .end local v0           #cancelButton:Landroid/widget/Button;
    .end local v3           #okButton:Landroid/widget/Button;
    :pswitch_2
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v7}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, path:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 535
    const-string v8, "Отправить по..."

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 536
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "Email"

    aput-object v9, v8, v10

    new-instance v9, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$14;

    invoke-direct {v9, p0, v4}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$14;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 543
    const/high16 v8, 0x104

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 544
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 545
    goto/16 :goto_0

    .line 548
    .end local v4           #path:Ljava/lang/String;
    :pswitch_3
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-direct {v1, p0, v10}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;I)V

    .line 549
    .restart local v1       #dialog:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 553
    :pswitch_4
    const-string v7, "Информация"

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 554
    const v7, 0x7f030026

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 555
    const v7, 0x7f0a00f8

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$15;

    invoke-direct {v8, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$15;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 231
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getNotFoundRecords()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 234
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 879
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    invoke-virtual {v0, p3}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/Record;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    .line 880
    new-instance v0, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    invoke-direct {v0, p0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "Воспроизведение записи"

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 881
    const-string v1, "Выберите \"Воспроизвести\" для воспроизведения записи или длинный клик по записи, чтобы увидеть другие возможные варианты"

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 882
    const-string v1, "Воспроизвести"

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$17;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$17;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 887
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 239
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    invoke-super {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 241
    :pswitch_0
    new-instance v0, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    invoke-direct {v0, p0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 242
    const v1, 0x7f06007c

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    const-string v2, "##"

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getNotFoundRecords()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 244
    const v1, 0x7f060022

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$4;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 248
    const v1, 0x7f060023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x7f0a0126
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->application:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->recordsListener:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->removeRecordsListener(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;)V

    .line 210
    invoke-super {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onPause()V

    .line 211
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 23
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 574
    packed-switch p1, :pswitch_data_0

    .line 668
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 670
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/appforce/ui/ThemedDialog;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 671
    check-cast p2, Lorg/appforce/ui/ThemedDialog;

    .end local p2
    sget-object v20, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/appforce/ui/ThemedViews;->changeDialogTheme(Lorg/appforce/ui/ThemedDialog;Lorg/appforce/ui/ThemedViews$Theme;)V

    .line 673
    :cond_1
    return-void

    .line 578
    .restart local p2
    :pswitch_1
    const v20, 0x7f0a010c

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 579
    .local v14, oldName:Landroid/widget/TextView;
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Введите новое имя для "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getRecordName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x3a

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 583
    .end local v14           #oldName:Landroid/widget/TextView;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v20, p2

    .line 584
    check-cast v20, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$AudioDialog;->prepare(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :pswitch_3
    const v20, 0x7f0a00f1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 590
    .local v8, format:Landroid/widget/ImageView;
    const v20, 0x7f0a00f4

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 591
    .local v18, type:Landroid/widget/ImageView;
    const v20, 0x7f0a00f2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 592
    .local v12, name:Landroid/widget/TextView;
    const v20, 0x7f0a00f6

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 593
    .local v3, created:Landroid/widget/TextView;
    const v20, 0x7f0a00f6

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 594
    .local v15, path:Landroid/widget/TextView;
    const v20, 0x7f0a00f7

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 595
    .local v6, duration:Landroid/widget/TextView;
    const v20, 0x7f0a00f5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 597
    .local v16, phone:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPhone()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCallType()Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v20

    sget-object v21, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    const v20, 0x7f020039

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 603
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getRecordName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/killermobile/totalrecall/s2/trial/Record;->getBroken()Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    move-result-object v20

    sget-object v21, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->WORKING:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/killermobile/totalrecall/s2/trial/Record;->getFormat()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    .line 625
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 631
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 634
    .local v2, calendar:Ljava/util/GregorianCalendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCreated()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 635
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v19

    .line 636
    .local v19, year:I
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    .line 637
    .local v11, month:I
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 638
    .local v5, day:I
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    .line 639
    .local v9, hour:I
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    .line 640
    .local v10, minute:I
    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v17

    .line 642
    .local v17, second:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .local v4, createdStr:Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 644
    invoke-static {v11}, Lcom/killermobile/totalrecall/s2/trial/Month;->getName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const/16 v20, 0x20

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 647
    const-string v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 649
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    const/16 v20, 0x3a

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    const/16 v20, 0x3a

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    new-instance v20, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/killermobile/totalrecall/s2/trial/Record;->getDuration()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-direct/range {v20 .. v22}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;-><init>(J)V

    invoke-virtual/range {v20 .. v20}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 600
    .end local v2           #calendar:Ljava/util/GregorianCalendar;
    .end local v4           #createdStr:Ljava/lang/StringBuilder;
    .end local v5           #day:I
    .end local v9           #hour:I
    .end local v10           #minute:I
    .end local v11           #month:I
    .end local v17           #second:I
    .end local v19           #year:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCallType()Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v20

    sget-object v21, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    const v20, 0x7f02003a

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 601
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCallType()Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v20

    sget-object v21, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    const v20, 0x7f02008a

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 609
    :sswitch_0
    const v20, 0x7f020086

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 613
    :sswitch_1
    const v20, 0x7f02006c

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 617
    :sswitch_2
    const/high16 v20, 0x7f02

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 621
    :sswitch_3
    const v20, 0x7f02008b

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 629
    :cond_5
    const v20, 0x7f020021

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 662
    .end local v3           #created:Landroid/widget/TextView;
    .end local v6           #duration:Landroid/widget/TextView;
    .end local v8           #format:Landroid/widget/ImageView;
    .end local v12           #name:Landroid/widget/TextView;
    .end local v15           #path:Landroid/widget/TextView;
    .end local v16           #phone:Landroid/widget/TextView;
    .end local v18           #type:Landroid/widget/ImageView;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 663
    .local v7, filePath:Ljava/lang/String;
    const v20, 0x7f0a00a7

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 664
    .local v13, nameTextView:Landroid/widget/TextView;
    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 606
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xfa4 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->application:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->recordsListener:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->addRecordsListener(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;)V

    .line 215
    invoke-super {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onResume()V

    .line 216
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    sget v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->playbackPosition:I

    if-lez v0, :cond_0

    .line 224
    const-string v0, "EXTRA_SAVED_PLAYBACK_POSITION"

    sget v1, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->playbackPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    :cond_0
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->playbackPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 226
    const-string v0, "EXTRA_SAVED_PLAYBACK_PATH"

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->playbackPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_1
    return-void
.end method

.method protected updateUI()V
    .locals 0

    .prologue
    .line 940
    return-void
.end method
