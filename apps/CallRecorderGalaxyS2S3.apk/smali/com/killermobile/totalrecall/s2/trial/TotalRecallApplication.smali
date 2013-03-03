.class public Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;
.super Landroid/app/Application;
.source "TotalRecallApplication.java"

# interfaces
.implements Lcom/killermobile/totalrecall/s2/trial/DB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;
    }
.end annotation


# static fields
.field public static final DEMO_RECORDING_DURATION_MINUTES:I = 0x1

.field public static IMEI:Ljava/lang/String;

.field public static SPLASH_OPENED:Z

.field private static instance:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private autoStart:Z

.field private cid:Ljava/lang/String;

.field private contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private records:[Lcom/killermobile/totalrecall/s2/trial/Record;

.field private final recordsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private storageState:Ljava/lang/String;

.field private tempStuff:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->SPLASH_OPENED:Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->autoStart:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->listeners:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->recordsListeners:Ljava/util/ArrayList;

    .line 50
    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->records:[Lcom/killermobile/totalrecall/s2/trial/Record;

    .line 51
    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->storageState:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->cid:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

    .line 55
    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->audioManager:Landroid/media/AudioManager;

    .line 56
    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->vibrator:Landroid/os/Vibrator;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->tempStuff:Ljava/util/HashMap;

    .line 65
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->serviceConnection:Landroid/content/ServiceConnection;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    return-void
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->storageState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    return-object v0
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static findCID()Ljava/lang/String;
    .locals 15

    .prologue
    .line 415
    const/4 v9, 0x0

    .line 417
    .local v9, process:Ljava/lang/Process;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    const/4 v11, 0x5

    if-lt v5, v11, :cond_0

    .line 440
    :try_start_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getVolumeId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 446
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 451
    :goto_1
    return-object v0

    .line 419
    :cond_0
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "/sys/class/mmc_host/mmc"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 420
    .local v8, prefix:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 422
    .local v4, files:[Ljava/io/File;
    const/4 v6, 0x0

    .line 423
    .local v6, mmc:Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v12, v4

    const/4 v11, 0x0

    :goto_2
    if-lt v11, v12, :cond_3

    .line 430
    :cond_1
    :goto_3
    const/4 v0, 0x0

    .line 431
    .local v0, cid:Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 432
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "cat "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/cid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 433
    new-instance v10, Ljava/util/Scanner;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 434
    .local v10, scanner:Ljava/util/Scanner;
    invoke-virtual {v10}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 446
    :cond_2
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 447
    :catch_0
    move-exception v11

    goto :goto_1

    .line 423
    .end local v0           #cid:Ljava/lang/String;
    .end local v10           #scanner:Ljava/util/Scanner;
    :cond_3
    :try_start_4
    aget-object v2, v4, v11

    .line 424
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, name:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mmc"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "0001"

    invoke-virtual {v7, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v13

    if-nez v13, :cond_4

    .line 426
    move-object v6, v7

    .line 427
    goto :goto_3

    .line 423
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 417
    .end local v2           #f:Ljava/io/File;
    .end local v7           #name:Ljava/lang/String;
    .restart local v0       #cid:Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 441
    .end local v0           #cid:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v6           #mmc:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 443
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 446
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 451
    :goto_4
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getVolumeId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 444
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 446
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 449
    :goto_5
    throw v11

    .line 447
    :catch_2
    move-exception v11

    goto/16 :goto_1

    .restart local v1       #e:Ljava/io/IOException;
    :catch_3
    move-exception v11

    goto :goto_4

    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v12

    goto :goto_5
.end method

.method public static getCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->instance:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->instance:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    return-object v0
.end method

.method private static getVolumeId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 458
    .local v0, t:Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 457
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 458
    .restart local v0       #t:Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 316
    const-string v2, "totalrecall.db"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 318
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .local v1, query:Ljava/lang/StringBuilder;
    const-string v2, "global_settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v2, " INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v2, "key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 335
    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v2, "records_library"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v2, " INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v2, "cid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v2, "call_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v2, "created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v2, "duration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v2, "format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v2, "broken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v2, "checksum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 372
    return-object v0
.end method


# virtual methods
.method public acknowledgeNotFoundRecords()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getCID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/Record;->acknowledgeNotFoundRecords(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->notifyRecordsListeners()V

    .line 143
    return-void
.end method

.method public addRecordsListener(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->recordsListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->recordsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->records:[Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-interface {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;->onListChanged([Lcom/killermobile/totalrecall/s2/trial/Record;)V

    .line 117
    return-void

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addRecordsListener(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;Z)V
    .locals 2
    .parameter "listener"
    .parameter "avoidFirstNotif"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->recordsListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->recordsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->records:[Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-interface {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;->onListChanged([Lcom/killermobile/totalrecall/s2/trial/Record;)V

    .line 124
    :cond_0
    return-void

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addServiceConnectedListener(Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->listeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;->onServiceConnected(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V

    .line 104
    :goto_0
    return-void

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->startService()V

    goto :goto_0
.end method

.method public addTempStuff(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter "key"
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->tempStuff:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->tempStuff:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->tempStuff:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    return-void
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 391
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->audioManager:Landroid/media/AudioManager;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getContactsManager()Lcom/killermobile/totalrecall/contacts/ContactsManager;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/killermobile/totalrecall/contacts/ContactsManager;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/contacts/ContactsManager;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

    return-object v0
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getExpiration()Lcom/killermobile/regchecks/CheckResult;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 287
    const/4 v10, 0x0

    .line 288
    .local v10, result:Ljava/lang/String;
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "global_settings"

    const-string v3, "key=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "expiration_time"

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 289
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 292
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Total recall application getExpiration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 295
    :try_start_0
    invoke-static {v10}, Lcom/killermobile/regchecks/CheckResult;->fromJSON(Ljava/lang/String;)Lcom/killermobile/regchecks/CheckResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 298
    :goto_0
    return-object v2

    .line 296
    :catch_0
    move-exception v9

    .line 297
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getNotFoundRecords()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/Record;->getNotFoundRecordsNumber(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    return v0
.end method

.method public getService()Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    return-object v0
.end method

.method public getTempStuff(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "key"
    .parameter "delete"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 408
    .local v0, o:Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->tempStuff:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 409
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->tempStuff:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v0           #o:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 410
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getVibrator()Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->vibrator:Landroid/os/Vibrator;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->vibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method public notifyRecordsListeners()V
    .locals 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getCID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/Record;->getAll(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[Lcom/killermobile/totalrecall/s2/trial/Record;

    move-result-object v1

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->records:[Lcom/killermobile/totalrecall/s2/trial/Record;

    .line 134
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->records:[Lcom/killermobile/totalrecall/s2/trial/Record;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->recordsListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->recordsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v2

    .line 138
    :cond_0
    return-void

    .line 135
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;

    .line 136
    .local v0, listener:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->records:[Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-interface {v0, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;->onListChanged([Lcom/killermobile/totalrecall/s2/trial/Record;)V

    goto :goto_0

    .line 135
    .end local v0           #listener:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreate()V
    .locals 17

    .prologue
    .line 232
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 234
    invoke-static/range {p0 .. p0}, Lorg/appforce/crashreport/CrashTrap;->start(Landroid/content/Context;)V

    .line 236
    sput-object p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->instance:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    .line 238
    const/4 v10, 0x0

    .line 240
    .local v10, cursor:Landroid/database/Cursor;
    const-string v1, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->IMEI:Ljava/lang/String;

    .line 243
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->setupDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "global_settings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 247
    const-string v1, "key"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 248
    .local v12, idKey:I
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 249
    .local v13, idValue:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 251
    .local v9, count:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-lt v11, v9, :cond_1

    .line 265
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 269
    .end local v9           #count:I
    .end local v11           #i:I
    .end local v12           #idKey:I
    .end local v13           #idValue:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->autoStart:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->setAutoStart(Z)V

    .line 271
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->autoStart:Z

    if-eqz v1, :cond_0

    .line 272
    new-instance v15, Landroid/content/Intent;

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v15, serviceIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 277
    .end local v15           #serviceIntent:Landroid/content/Intent;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->setStorageState(Ljava/lang/String;)V

    .line 279
    return-void

    .line 252
    .restart local v9       #count:I
    .restart local v11       #i:I
    .restart local v12       #idKey:I
    .restart local v13       #idValue:I
    :cond_1
    :try_start_2
    invoke-interface {v10, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 253
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 254
    .local v14, key:Ljava/lang/String;
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 256
    .local v16, value:Ljava/lang/String;
    const-string v1, "auto_start"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->autoStart:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 262
    .end local v9           #count:I
    .end local v11           #i:I
    .end local v12           #idKey:I
    .end local v13           #idValue:I
    .end local v14           #key:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 265
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 266
    :catch_1
    move-exception v1

    goto :goto_1

    .line 263
    :catchall_0
    move-exception v1

    .line 265
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 267
    :goto_2
    throw v1

    .line 266
    :catch_2
    move-exception v2

    goto :goto_2

    .restart local v9       #count:I
    .restart local v11       #i:I
    .restart local v12       #idKey:I
    .restart local v13       #idValue:I
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 283
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 284
    return-void
.end method

.method public removeRecordsListener(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->recordsListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->recordsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    monitor-exit v1

    .line 130
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeServiceConnectedListener(Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->listeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    monitor-exit v1

    .line 110
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAutoStart(Z)V
    .locals 5
    .parameter "autoStart"

    .prologue
    const/4 v3, 0x1

    .line 215
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 216
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/killermobile/totalrecall/s2/trial/BootReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/killermobile/totalrecall/s2/trial/BootReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v0, bootReceiver:Landroid/content/ComponentName;
    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 221
    return-void

    .line 219
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public setExpiration(Lcom/killermobile/regchecks/CheckResult;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 304
    if-nez p1, :cond_1

    const-string v1, ""

    .line 306
    .local v1, toSave:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Total recall application setExpiration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 307
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "key"

    const-string v3, "expiration_time"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "global_settings"

    const-string v4, "key = \'expiration_time\'"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 311
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "global_settings"

    const-string v4, "key"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 313
    :cond_0
    return-void

    .line 304
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #toSave:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/killermobile/regchecks/CheckResult;->toJSON()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setStorageState(Ljava/lang/String;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 151
    const/4 v2, 0x0

    .line 153
    .local v2, reason:Ljava/lang/String;
    const-string v3, "bad_removal"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    const-string v2, "Media card not present."

    .line 188
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->storageState:Ljava/lang/String;

    .line 189
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->storageState:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 190
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->findCID()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, newCid:Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->cid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->cid:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->notifyRecordsListeners()V

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    if-eqz v3, :cond_2

    .line 197
    :try_start_0
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setStorageAvailable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1           #newCid:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 157
    :cond_3
    const-string v3, "checking"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 159
    const-string v2, "Media card is being checked."

    goto :goto_0

    .line 161
    :cond_4
    const-string v3, "mounted"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    const-string v3, "mounted_ro"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 165
    const-string v2, "Media card is mounted read-only."

    goto :goto_0

    .line 167
    :cond_5
    const-string v3, "nofs"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 169
    const-string v2, "Media card is blank or using unsupported filesystem."

    goto :goto_0

    .line 171
    :cond_6
    const-string v3, "removed"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 173
    const-string v2, "Media card not present."

    goto :goto_0

    .line 175
    :cond_7
    const-string v3, "shared"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 177
    const-string v2, "Media card is shared via USB."

    goto :goto_0

    .line 179
    :cond_8
    const-string v3, "unmountable"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 181
    const-string v2, "Media card is corrupted."

    goto :goto_0

    .line 183
    :cond_9
    const-string v3, "unmounted"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const-string v2, "Media card is not mounted."

    goto :goto_0

    .line 198
    .restart local v1       #newCid:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 203
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #newCid:Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->cid:Ljava/lang/String;

    .line 204
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    if-eqz v3, :cond_2

    .line 206
    :try_start_1
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->storageState:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setStorageUnavailable(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 207
    :catch_1
    move-exception v0

    .line 209
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public startService()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 95
    return-void
.end method
