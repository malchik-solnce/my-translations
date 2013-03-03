.class public Lcom/killermobile/totalrecall/s2/trial/AudioSettings;
.super Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;
.source "AudioSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;
    }
.end annotation


# static fields
.field private static final DIALOG_FIX_RECORDING:I = 0x64

.field private static final PREF_DICTAPHONE_DISABLED:Ljava/lang/String; = "com.killermobile.initial_dict_disabled"

.field private static final REQUEST_DESTINATION:I = 0x3

.field private static final REQUEST_DURATION:I = 0x1

.field private static final REQUEST_MIN_DURATION:I = 0x4

.field private static final REQUEST_SIZE:I = 0x2


# instance fields
.field private final checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final clickListener:Landroid/view/View$OnClickListener;

.field private destination:Landroid/widget/EditText;

.field private final duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

.field private fixCallRecording:Landroid/widget/Button;

.field private lRadioGroup:Lorg/appforce/ui/LogicalRadioGroup;

.field private maxDuration:Landroid/widget/Button;

.field private maxDurationEnabled:Landroid/widget/CheckBox;

.field private maxSize:Landroid/widget/Button;

.field private maxSizeEnabled:Landroid/widget/CheckBox;

.field private minDuration:Landroid/widget/Button;

.field private minDurationEnabled:Landroid/widget/CheckBox;

.field private final minimumDuration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

.field private final radioGroupListener:Lorg/appforce/ui/LogicalRadioGroup$LogicalChangeListener;

.field private recordingStrategy:Landroid/widget/Button;

.field private final size:Lcom/killermobile/totalrecall/s2/trial/MaxSize;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    invoke-direct {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;-><init>(J)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    .line 55
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    invoke-direct {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;-><init>(J)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->minimumDuration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    .line 56
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/MaxSize;

    invoke-direct {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/MaxSize;-><init>(J)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->size:Lcom/killermobile/totalrecall/s2/trial/MaxSize;

    .line 60
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->radioGroupListener:Lorg/appforce/ui/LogicalRadioGroup$LogicalChangeListener;

    .line 104
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$2;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 125
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->clickListener:Landroid/view/View$OnClickListener;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->displayWAVAlert()V

    return-void
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    return-object v0
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->minimumDuration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    return-object v0
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)Lcom/killermobile/totalrecall/s2/trial/MaxSize;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->size:Lcom/killermobile/totalrecall/s2/trial/MaxSize;

    return-object v0
.end method

.method static synthetic access$4(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->parseMounts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->showDestinationPicker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->showFixRecordingUI()V

    return-void
.end method

.method static synthetic access$7(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-static {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->setDictaphoneEnabled(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->recordingStrategy:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)Z
    .locals 1
    .parameter

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->isFixAmbigous()Z

    move-result v0

    return v0
.end method

.method private displayWAVAlert()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    invoke-direct {v0, p0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 98
    const v1, 0x7f060076

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 99
    const v1, 0x7f060077

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 100
    const v1, 0x7f060022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 102
    return-void
.end method

.method private isFixAmbigous()Z
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xf

    const/16 v4, 0xe

    const/4 v2, 0x1

    .line 300
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, pkg:Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, model:Ljava/lang/String;
    const-string v3, "com.killermobile.totalrecall.s2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 303
    const-string v3, "gt-i9100"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v3, v4, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v3, v5, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v3, v6, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v2

    .line 308
    :cond_1
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->checkForS3()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v3, v6, :cond_0

    .line 325
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 313
    :cond_3
    const-string v3, "com.killermobile.totalrecall.note"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    const-string v3, "galaxy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "note"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 315
    :cond_4
    const-string v3, "sgh-i717"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 316
    const-string v3, "gt-n7000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 317
    const-string v3, "gt-n7003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 318
    const-string v3, "p6800"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 319
    const-string v3, "i9220"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v3, v4, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v3, v5, :cond_2

    goto :goto_0
.end method

.method private parseMount(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "line"

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x20

    .line 500
    const-string v2, "/dev/block/vold"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 501
    const-string v2, "/dev/fuse"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    :cond_0
    const-string v2, "/asec"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    :cond_1
    :goto_0
    return-object v1

    .line 505
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 506
    .local v0, div:I
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private parseMounts()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 474
    .local v5, mounts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/mounts"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 475
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 476
    .local v3, line:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v3

    if-nez v3, :cond_2

    .line 487
    if-eqz v1, :cond_4

    .line 489
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v0, v1

    .line 495
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v5

    .line 477
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-direct {p0, v3}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->parseMount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, mount:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 479
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 482
    .end local v4           #mount:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 483
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 487
    if-eqz v0, :cond_1

    .line 489
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 490
    :catch_1
    move-exception v2

    .line 491
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 484
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 485
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 487
    if-eqz v0, :cond_1

    .line 489
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 490
    :catch_3
    move-exception v2

    .line 491
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 486
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 487
    :goto_4
    if-eqz v0, :cond_3

    .line 489
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 494
    :cond_3
    :goto_5
    throw v6

    .line 490
    :catch_4
    move-exception v2

    .line 491
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 490
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 491
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 486
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 484
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 482
    .end local v3           #line:Ljava/lang/String;
    :catch_7
    move-exception v2

    goto :goto_2
.end method

.method private static setDictaphoneEnabled(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;Z)V
    .locals 3
    .parameter "service"
    .parameter "enabled"

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 276
    :cond_0
    if-eqz p1, :cond_2

    .line 278
    :try_start_0
    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCalls()I

    move-result v1

    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 279
    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->toggleCallsType()V

    .line 281
    :cond_1
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStartRecording(Z)V

    .line 282
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStopRecording(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 288
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCalls()I

    move-result v1

    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 289
    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->toggleCallsType()V

    .line 291
    :cond_3
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStartRecording(Z)V

    .line 292
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStopRecording(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 293
    :catch_1
    move-exception v0

    .line 294
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setupDictaphoneIfNeeded(Landroid/content/Context;Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V
    .locals 5
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v4, 0x1

    .line 255
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 256
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "com.killermobile.initial_dict_disabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, model:Ljava/lang/String;
    const-string v2, "galaxy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "note"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 261
    :cond_2
    const-string v2, "sgh-i717"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 262
    const-string v2, "gt-n7000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 263
    const-string v2, "gt-n7003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 264
    const-string v2, "p6800"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 265
    const-string v2, "i9220"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 266
    const-string v2, "gt-i9100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    :cond_3
    invoke-static {p1, v4}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->setDictaphoneEnabled(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;Z)V

    .line 268
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "com.killermobile.initial_dict_disabled"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private showDestinationPicker(Ljava/lang/String;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, destinationPicker:Landroid/content/Intent;
    const-string v1, "com.killermobile.totalrecall.DestinationPickerDialog.DIRECTORIES"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string v1, "com.killermobile.totalrecall.DestinationPickerDialog.ROOT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 183
    return-void
.end method

.method private showFixRecordingUI()V
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->checkForS3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-static {p0}, Lcom/killermobile/S2CallRec;->cleanPrefs(Landroid/content/Context;)V

    .line 331
    invoke-static {p0}, Lcom/killermobile/S2CallRec;->showUI(Landroid/content/Context;)Z

    .line 336
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-static {p0}, Lcom/killermobile/S3JBFix;->cleanPrefs(Landroid/content/Context;)V

    .line 334
    invoke-static {p0}, Lcom/killermobile/S3JBFix;->showUI(Landroid/content/Context;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 351
    packed-switch p1, :pswitch_data_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 354
    :pswitch_0
    if-ne p2, v6, :cond_0

    .line 355
    const-string v6, "com.killermobile.totalrecall.DURATION"

    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    invoke-virtual {v7}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getDuration()J

    move-result-wide v7

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 357
    .local v0, dur:J
    :try_start_0
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMaxDuration(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_1
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->updateUI()V

    goto :goto_0

    .line 358
    :catch_0
    move-exception v2

    .line 359
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 368
    .end local v0           #dur:J
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_1
    if-ne p2, v6, :cond_0

    .line 369
    const-string v6, "com.killermobile.totalrecall.DURATION"

    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->minimumDuration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    invoke-virtual {v7}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getDuration()J

    move-result-wide v7

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 371
    .restart local v0       #dur:J
    :try_start_1
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMinDuration(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    :goto_2
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->updateUI()V

    goto :goto_0

    .line 372
    :catch_1
    move-exception v2

    .line 373
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 382
    .end local v0           #dur:J
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_2
    if-ne p2, v6, :cond_0

    .line 383
    const-string v6, "com.killermobile.totalrecall.SIZE"

    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->size:Lcom/killermobile/totalrecall/s2/trial/MaxSize;

    invoke-virtual {v7}, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->getSize()J

    move-result-wide v7

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 386
    .local v3, s:J
    :try_start_2
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMaxSize(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 390
    :goto_3
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->updateUI()V

    goto :goto_0

    .line 387
    :catch_2
    move-exception v2

    .line 388
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 397
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #s:J
    :pswitch_3
    if-ne p2, v6, :cond_0

    .line 399
    const-string v6, "com.killermobile.totalrecall.DestinationPickerDialog.SELECTION"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, sel:[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v6, v5

    if-lez v6, :cond_1

    .line 402
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->destination:Landroid/widget/EditText;

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :try_start_3
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-interface {v6, v7}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDestination(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 411
    :cond_1
    :goto_4
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->updateUI()V

    goto :goto_0

    .line 406
    :catch_3
    move-exception v2

    .line 407
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->setContentView(I)V

    .line 190
    new-instance v0, Lorg/appforce/ui/LogicalRadioGroup;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    .line 191
    const/high16 v3, 0x7f0a

    invoke-virtual {p0, v3}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 192
    const v3, 0x7f0a0001

    invoke-virtual {p0, v3}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 193
    const v3, 0x7f0a0002

    invoke-virtual {p0, v3}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 194
    const v3, 0x7f0a0003

    invoke-virtual {p0, v3}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/appforce/ui/LogicalRadioGroup;-><init>([Landroid/view/View;)V

    .line 190
    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->lRadioGroup:Lorg/appforce/ui/LogicalRadioGroup;

    .line 196
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxDurationEnabled:Landroid/widget/CheckBox;

    .line 197
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->minDurationEnabled:Landroid/widget/CheckBox;

    .line 198
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxSizeEnabled:Landroid/widget/CheckBox;

    .line 199
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxDuration:Landroid/widget/Button;

    .line 200
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->minDuration:Landroid/widget/Button;

    .line 201
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxSize:Landroid/widget/Button;

    .line 202
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->destination:Landroid/widget/EditText;

    .line 203
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->recordingStrategy:Landroid/widget/Button;

    .line 204
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->fixCallRecording:Landroid/widget/Button;

    .line 206
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxDuration:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->minDuration:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxSize:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->destination:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->recordingStrategy:Landroid/widget/Button;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.killermobile.totalrecall.s2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.killermobile.totalrecall.note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->fixCallRecording:Landroid/widget/Button;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$5;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$5;-><init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->fixCallRecording:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 346
    :goto_0
    return-object v0

    .line 343
    :pswitch_0
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;-><init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V

    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected updateUI()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 421
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->lRadioGroup:Lorg/appforce/ui/LogicalRadioGroup;

    invoke-virtual {v2, v3}, Lorg/appforce/ui/LogicalRadioGroup;->setLogicalChangeListener(Lorg/appforce/ui/LogicalRadioGroup$LogicalChangeListener;)V

    .line 422
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxDurationEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 423
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->minDurationEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 424
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxSizeEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 427
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getAudioFormat()I

    move-result v0

    .line 428
    .local v0, audio:I
    sparse-switch v0, :sswitch_data_0

    .line 442
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->lRadioGroup:Lorg/appforce/ui/LogicalRadioGroup;

    invoke-virtual {v2}, Lorg/appforce/ui/LogicalRadioGroup;->clearCheck()V

    .line 445
    :goto_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxDurationEnabled:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isMaxDurationEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 446
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->minDurationEnabled:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isMinDurationEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 447
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxSizeEnabled:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isMaxSizeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 448
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->destination:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getDestination()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getMaxDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setDuration(J)V

    .line 451
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->minimumDuration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getMinDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setDuration(J)V

    .line 452
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxDuration:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->minDuration:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->minimumDuration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->size:Lcom/killermobile/totalrecall/s2/trial/MaxSize;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getMaxSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->setSize(J)V

    .line 457
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxSize:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->size:Lcom/killermobile/totalrecall/s2/trial/MaxSize;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->lRadioGroup:Lorg/appforce/ui/LogicalRadioGroup;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->radioGroupListener:Lorg/appforce/ui/LogicalRadioGroup$LogicalChangeListener;

    invoke-virtual {v2, v3}, Lorg/appforce/ui/LogicalRadioGroup;->setLogicalChangeListener(Lorg/appforce/ui/LogicalRadioGroup$LogicalChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v0           #audio:I
    :goto_1
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxDurationEnabled:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 465
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->minDurationEnabled:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 466
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->maxSizeEnabled:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 468
    return-void

    .line 430
    .restart local v0       #audio:I
    :sswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->lRadioGroup:Lorg/appforce/ui/LogicalRadioGroup;

    const/high16 v3, 0x7f0a

    invoke-virtual {v2, v3}, Lorg/appforce/ui/LogicalRadioGroup;->check(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 460
    .end local v0           #audio:I
    :catch_0
    move-exception v1

    .line 461
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 433
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #audio:I
    :sswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->lRadioGroup:Lorg/appforce/ui/LogicalRadioGroup;

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Lorg/appforce/ui/LogicalRadioGroup;->check(I)V

    goto/16 :goto_0

    .line 436
    :sswitch_2
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->lRadioGroup:Lorg/appforce/ui/LogicalRadioGroup;

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Lorg/appforce/ui/LogicalRadioGroup;->check(I)V

    goto/16 :goto_0

    .line 439
    :sswitch_3
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->lRadioGroup:Lorg/appforce/ui/LogicalRadioGroup;

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Lorg/appforce/ui/LogicalRadioGroup;->check(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 428
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xfa4 -> :sswitch_3
    .end sparse-switch
.end method
