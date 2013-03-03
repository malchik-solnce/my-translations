.class public Lcom/killermobilecrjb/patcher/Patcher;
.super Ljava/lang/Object;
.source "Patcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;,
        Lcom/killermobilecrjb/patcher/Patcher$Verification;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$killermobilecrjb$patcher$Patcher$Verification:[I

.field public static ACK_DIALOG:Z

.field private static DEBUG:Z

.field public static DEXNAME:Ljava/lang/String;

.field public static DIALOG_RESULT:I

.field public static KM_PATH:Ljava/lang/String;

.field public static LAST_INSTALL_ERROR:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field public isPatching:Z

.field private mContext:Landroid/content/Context;

.field public mShellProgress:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

.field private mSuccess:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$killermobilecrjb$patcher$Patcher$Verification()[I
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/killermobilecrjb/patcher/Patcher;->$SWITCH_TABLE$com$killermobilecrjb$patcher$Patcher$Verification:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/killermobilecrjb/patcher/Patcher$Verification;->values()[Lcom/killermobilecrjb/patcher/Patcher$Verification;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/killermobilecrjb/patcher/Patcher$Verification;->CHECK_ODEX:Lcom/killermobilecrjb/patcher/Patcher$Verification;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Patcher$Verification;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/killermobilecrjb/patcher/Patcher$Verification;->CHECK_ROOT:Lcom/killermobilecrjb/patcher/Patcher$Verification;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Patcher$Verification;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/killermobilecrjb/patcher/Patcher;->$SWITCH_TABLE$com$killermobilecrjb$patcher$Patcher$Verification:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const-string v0, "/data/kmobileCRJB/"

    sput-object v0, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/killermobilecrjb/patcher/Patcher;->DEXNAME:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/killermobilecrjb/patcher/Patcher;->DEBUG:Z

    .line 45
    const-string v0, "KMPatcher"

    sput-object v0, Lcom/killermobilecrjb/patcher/Patcher;->TAG:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/killermobilecrjb/patcher/Patcher;->LAST_INSTALL_ERROR:Ljava/lang/String;

    .line 48
    sput-boolean v1, Lcom/killermobilecrjb/patcher/Patcher;->ACK_DIALOG:Z

    .line 49
    sput v1, Lcom/killermobilecrjb/patcher/Patcher;->DIALOG_RESULT:I

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/killermobilecrjb/patcher/Patcher;->isPatching:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/Patcher;->mContext:Landroid/content/Context;

    .line 264
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/Patcher;->mContext:Landroid/content/Context;

    .line 266
    new-instance v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    const-string v1, "baksmali"

    invoke-direct {v0, p0, v1}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;-><init>(Lcom/killermobilecrjb/patcher/Patcher;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/Patcher;->mShellProgress:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    .line 267
    return-void
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 360
    sget-boolean v0, Lcom/killermobilecrjb/patcher/Patcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lcom/killermobilecrjb/patcher/Patcher;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    sput-object p0, Lcom/killermobilecrjb/patcher/Patcher;->LAST_INSTALL_ERROR:Ljava/lang/String;

    .line 365
    return-void
.end method

.method private copyAssets()Z
    .locals 20

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 285
    .local v4, assets:Landroid/content/res/AssetManager;
    :try_start_0
    const-string v15, "Files"

    invoke-virtual {v4, v15}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 287
    .local v11, files:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v16, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 329
    new-instance v7, Ljava/io/File;

    const-string v15, "/data/kmobile/"

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v7, dataKm:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 332
    const-string v15, "mkdir /data/kmobile/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    :cond_0
    const-string v15, "-R 777"

    const-string v16, "/data/kmobile/"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/killermobilecrjb/patcher/Patcher;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    .line 336
    const/4 v15, 0x1

    .end local v7           #dataKm:Ljava/io/File;
    .end local v11           #files:[Ljava/lang/String;
    :goto_1
    return v15

    .line 287
    .restart local v11       #files:[Ljava/lang/String;
    :cond_1
    :try_start_1
    aget-object v10, v11, v15

    .line 289
    .local v10, filename:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 293
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v17

    if-nez v17, :cond_2

    .line 295
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Existing asset file: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " could not be deleted!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 296
    const/4 v15, 0x0

    goto :goto_1

    .line 300
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Files/"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 302
    .local v3, assetFile:Ljava/io/InputStream;
    const/high16 v6, 0x30

    .line 303
    .local v6, bufsize:I
    new-array v5, v6, [B

    .line 305
    .local v5, buffer:[B
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 307
    .local v12, fis:Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 308
    .local v13, len:I
    const/4 v14, 0x0

    .line 309
    .local v14, read:I
    :goto_2
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_3

    .line 313
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v5, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 314
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 315
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 317
    const-string v17, "755"

    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/killermobilecrjb/patcher/Patcher;->chmod(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v17

    if-nez v17, :cond_4

    .line 318
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 310
    :cond_3
    add-int/2addr v14, v13

    goto :goto_2

    .line 287
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 322
    .end local v3           #assetFile:Ljava/io/InputStream;
    .end local v5           #buffer:[B
    .end local v6           #bufsize:I
    .end local v9           #file:Ljava/io/File;
    .end local v10           #filename:Ljava/lang/String;
    .end local v11           #files:[Ljava/lang/String;
    .end local v12           #fis:Ljava/io/FileOutputStream;
    .end local v13           #len:I
    .end local v14           #read:I
    :catch_0
    move-exception v8

    .line 324
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 325
    const/4 v15, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public backupSystem()Z
    .locals 5

    .prologue
    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/killermobilecrjb/patcher/Patcher;->DEXNAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, kmPathSecPhone:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/system/app/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/killermobilecrjb/patcher/Patcher;->DEXNAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, sysPathSecPhoneOdex:Ljava/lang/String;
    const-string v1, "/system/app/SecPhone.apk"

    .line 347
    .local v1, sysPathSecPhoneApk:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "busybox cp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "busybox cp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SecPhone.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/Patcher;->success()Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    const/4 v3, 0x0

    .line 355
    :goto_0
    return v3

    .line 353
    :cond_0
    const-string v3, "-R 777"

    sget-object v4, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/killermobilecrjb/patcher/Patcher;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    .line 355
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public baksmali(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter "file"
    .parameter "outDir"
    .parameter "heapSize"

    .prologue
    const/4 v3, 0x0

    .line 449
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 451
    .local v1, sdk:I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-a "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, apiLevel:Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, strHeapSize:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dalvikvm -Xmx"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "M -cp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "baksmali.jar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " org.jf.baksmali.main "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -o "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -d /system/framework/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 457
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/Patcher;->success()Z

    move-result v4

    if-nez v4, :cond_1

    .line 460
    iget-object v4, p0, Lcom/killermobilecrjb/patcher/Patcher;->mSuccess:Ljava/lang/String;

    const-string v5, "Warning"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v3

    .line 468
    :cond_1
    const-string v4, "-R 777"

    invoke-virtual {p0, v4, p2}, Lcom/killermobilecrjb/patcher/Patcher;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public beenPatched()Z
    .locals 14

    .prologue
    .line 846
    new-instance v9, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "kmpatcher.sfv"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 847
    .local v9, sfv:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 848
    const/4 v12, 0x0

    .line 886
    :goto_0
    return v12

    .line 850
    :cond_0
    const-string v12, "/system/app/SecPhone.apk"

    invoke-virtual {p0, v12}, Lcom/killermobilecrjb/patcher/Patcher;->getCRC(Ljava/lang/String;)J

    move-result-wide v7

    .line 853
    .local v7, secPhoneCRC:J
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "kmpatcher.sfv"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 854
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 857
    .local v5, reader:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    .local v0, buffer:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, temp:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 863
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 864
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 866
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 868
    .local v1, check:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v12, "([\\w\\.]+)\\s(.+)"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 870
    .local v6, regex:Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-nez v12, :cond_3

    .line 877
    const-string v12, "SecPhone.tmp.aligned"

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v7

    if-nez v12, :cond_2

    .line 878
    const/4 v12, 0x1

    goto :goto_0

    .line 860
    .end local v1           #check:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6           #regex:Ljava/util/regex/Matcher;
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 880
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v10           #temp:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 881
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 886
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 871
    .restart local v0       #buffer:Ljava/lang/StringBuilder;
    .restart local v1       #check:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #regex:Ljava/util/regex/Matcher;
    .restart local v10       #temp:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x1

    :try_start_1
    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 872
    .local v4, key:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "0x"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x2

    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 874
    .local v11, val:Ljava/lang/Long;
    invoke-virtual {v1, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 882
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #check:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #regex:Ljava/util/regex/Matcher;
    .end local v10           #temp:Ljava/lang/String;
    .end local v11           #val:Ljava/lang/Long;
    :catch_1
    move-exception v2

    .line 883
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public chmod(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "mod"
    .parameter "path"

    .prologue
    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, cmd:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 624
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/Patcher;->success()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    const/4 v1, 0x0

    .line 627
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 0

    .prologue
    .line 535
    return-void
.end method

.method public createNewJars()Z
    .locals 4

    .prologue
    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SecPhone.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, kmTempSecPhone:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SecPhone.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "dex/secphone/classes.dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->createZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public createSfv()V
    .locals 11

    .prologue
    .line 891
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "kmpatcher.sfv"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 893
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 895
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 899
    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "SecPhone.tmp.aligned"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/killermobilecrjb/patcher/Patcher;->getCRC(Ljava/lang/String;)J

    move-result-wide v4

    .line 900
    .local v4, secPhoneCRC:J
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "spoofer.patch"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/killermobilecrjb/patcher/Patcher;->getCRC(Ljava/lang/String;)J

    move-result-wide v6

    .line 902
    .local v6, spooferCRC:J
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "kmpatcher.sfv"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 903
    .local v2, fos:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 905
    .local v3, s:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SecPhone.tmp.aligned "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    const-string v8, "\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "spoofer.patch "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 910
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #s:Ljava/lang/StringBuilder;
    .end local v4           #secPhoneCRC:J
    .end local v6           #spooferCRC:J
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error creating sfv file.\n"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .parameter "sysPath"
    .parameter "zipPath"
    .parameter "dexPath"

    .prologue
    .line 678
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 680
    .local v2, bis:Ljava/io/BufferedInputStream;
    new-instance v11, Ljava/util/zip/ZipInputStream;

    invoke-direct {v11, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 681
    .local v11, zi:Ljava/util/zip/ZipInputStream;
    new-instance v12, Ljava/util/zip/ZipOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 683
    .local v12, zo:Ljava/util/zip/ZipOutputStream;
    const/4 v10, 0x0

    .line 685
    .local v10, ze:Ljava/util/zip/ZipEntry;
    const/16 v4, 0x400

    .line 686
    .local v4, bufsize:I
    new-array v3, v4, [B

    .line 690
    .local v3, buf:[B
    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v10

    if-nez v10, :cond_1

    .line 717
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    .local v6, dexFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 720
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 721
    .local v8, fi:Ljava/io/FileInputStream;
    new-instance v13, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 723
    :goto_1
    const/4 v13, 0x0

    invoke-virtual {v8, v3, v13, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    .local v9, len:I
    const/4 v13, -0x1

    if-ne v9, v13, :cond_3

    .line 726
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 728
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 738
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V

    .line 739
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 742
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "zipalign -f 4 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".aligned"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 743
    const-string v13, "777"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ".aligned"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/killermobilecrjb/patcher/Patcher;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    .line 745
    const/4 v13, 0x1

    .line 752
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #buf:[B
    .end local v4           #bufsize:I
    .end local v6           #dexFile:Ljava/io/File;
    .end local v8           #fi:Ljava/io/FileInputStream;
    .end local v9           #len:I
    .end local v10           #ze:Ljava/util/zip/ZipEntry;
    .end local v11           #zi:Ljava/util/zip/ZipInputStream;
    .end local v12           #zo:Ljava/util/zip/ZipOutputStream;
    :goto_2
    return v13

    .line 693
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #buf:[B
    .restart local v4       #bufsize:I
    .restart local v10       #ze:Ljava/util/zip/ZipEntry;
    .restart local v11       #zi:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zo:Ljava/util/zip/ZipOutputStream;
    :cond_1
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "classes.dex"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 696
    invoke-virtual {v12, v10}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 698
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_0

    .line 700
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 701
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :goto_3
    invoke-virtual {v11, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v9

    .restart local v9       #len:I
    const/4 v13, -0x1

    if-ne v9, v13, :cond_2

    .line 705
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 707
    .local v5, data:[B
    invoke-virtual {v12, v5}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 747
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #buf:[B
    .end local v4           #bufsize:I
    .end local v5           #data:[B
    .end local v9           #len:I
    .end local v10           #ze:Ljava/util/zip/ZipEntry;
    .end local v11           #zi:Ljava/util/zip/ZipInputStream;
    .end local v12           #zo:Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v7

    .line 748
    .local v7, e:Ljava/io/FileNotFoundException;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "File not found: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 749
    const/4 v13, 0x0

    goto :goto_2

    .line 702
    .end local v7           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #buf:[B
    .restart local v4       #bufsize:I
    .restart local v9       #len:I
    .restart local v10       #ze:Ljava/util/zip/ZipEntry;
    .restart local v11       #zi:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zo:Ljava/util/zip/ZipOutputStream;
    :cond_2
    const/4 v13, 0x0

    :try_start_1
    invoke-virtual {v1, v3, v13, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 750
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #buf:[B
    .end local v4           #bufsize:I
    .end local v9           #len:I
    .end local v10           #ze:Ljava/util/zip/ZipEntry;
    .end local v11           #zi:Ljava/util/zip/ZipInputStream;
    .end local v12           #zo:Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v7

    .line 751
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 752
    const/4 v13, 0x0

    goto :goto_2

    .line 724
    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #buf:[B
    .restart local v4       #bufsize:I
    .restart local v6       #dexFile:Ljava/io/File;
    .restart local v8       #fi:Ljava/io/FileInputStream;
    .restart local v9       #len:I
    .restart local v10       #ze:Ljava/util/zip/ZipEntry;
    .restart local v11       #zi:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zo:Ljava/util/zip/ZipOutputStream;
    :cond_3
    const/4 v13, 0x0

    :try_start_2
    invoke-virtual {v12, v3, v13, v9}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto/16 :goto_1

    .line 730
    .end local v8           #fi:Ljava/io/FileInputStream;
    .end local v9           #len:I
    :cond_4
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V

    .line 731
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 733
    const-string v13, "Could not find dex during packaging."

    invoke-static {v13}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 734
    const/4 v13, 0x0

    goto :goto_2
.end method

.method public declared-synchronized exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "cmd"

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    const-string v2, "$"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    const-string v2, "$"

    const-string v3, "\\$"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 637
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/killermobilecrjb/patcher/Shell;->sudo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/killermobilecrjb/patcher/Shell;->getLastErrStream()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/killermobilecrjb/patcher/Patcher;->mSuccess:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/killermobilecrjb/patcher/Shell$ShellException; {:try_start_1 .. :try_end_1} :catch_0

    .line 645
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, e:Lcom/killermobilecrjb/patcher/Shell$ShellException;
    :try_start_2
    invoke-virtual {v0}, Lcom/killermobilecrjb/patcher/Shell$ShellException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 645
    const/4 v1, 0x0

    goto :goto_0

    .line 632
    .end local v0           #e:Lcom/killermobilecrjb/patcher/Shell$ShellException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public fixPermissions()V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method public getCRC(Ljava/lang/String;)J
    .locals 11
    .parameter "path"

    .prologue
    const-wide/16 v8, 0x0

    .line 760
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 761
    .local v5, fis:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 763
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/high16 v2, 0x140

    .line 764
    .local v2, bufsize:I
    new-array v1, v2, [B

    .line 765
    .local v1, buf:[B
    const/4 v6, 0x0

    .line 766
    .local v6, len:I
    const/4 v7, 0x0

    .line 767
    .local v7, read:I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v10, -0x1

    if-ne v6, v10, :cond_0

    .line 771
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 772
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 774
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 775
    .local v3, crc:Ljava/util/zip/CRC32;
    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 777
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v8

    .line 785
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #buf:[B
    .end local v2           #bufsize:I
    .end local v3           #crc:Ljava/util/zip/CRC32;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #len:I
    .end local v7           #read:I
    :goto_1
    return-wide v8

    .line 768
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #buf:[B
    .restart local v2       #bufsize:I
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #len:I
    .restart local v7       #read:I
    :cond_0
    add-int/2addr v7, v6

    goto :goto_0

    .line 779
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #buf:[B
    .end local v2           #bufsize:I
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #len:I
    .end local v7           #read:I
    :catch_0
    move-exception v4

    .line 780
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_1

    .line 783
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 784
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/Patcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hasFiles(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "dir"
    .parameter "suffix"

    .prologue
    .line 651
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    .local v2, sysdir:Ljava/io/File;
    new-instance v1, Lcom/killermobilecrjb/patcher/Patcher$1;

    invoke-direct {v1, p0, p2}, Lcom/killermobilecrjb/patcher/Patcher$1;-><init>(Lcom/killermobilecrjb/patcher/Patcher;Ljava/lang/String;)V

    .line 659
    .local v1, filter:Ljava/io/FilenameFilter;
    invoke-virtual {v2, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, fileList:[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUpdate()Z
    .locals 17

    .prologue
    .line 793
    new-instance v10, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    sget-object v16, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "kmpatcher.sfv"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 794
    .local v10, sfv:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 795
    const/4 v15, 0x0

    .line 841
    :goto_0
    return v15

    .line 798
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    sget-object v16, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "spoofer.patch"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/killermobilecrjb/patcher/Patcher;->getCRC(Ljava/lang/String;)J

    move-result-wide v11

    .line 801
    .local v11, spooferCRC:J
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v15, Ljava/lang/StringBuilder;

    sget-object v16, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "kmpatcher.sfv"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 802
    .local v6, fis:Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 805
    .local v8, reader:Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    .local v1, buffer:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, temp:Ljava/lang/String;
    if-nez v13, :cond_1

    .line 811
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 812
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 814
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 816
    .local v2, check:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v15, "(\\w+\\.\\w+)\\s(.+)"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 818
    .local v9, regex:Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-nez v15, :cond_3

    .line 825
    const-string v15, "spoofer.patch"

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 827
    const/4 v15, 0x1

    goto :goto_0

    .line 808
    .end local v2           #check:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9           #regex:Ljava/util/regex/Matcher;
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 835
    .end local v1           #buffer:Ljava/lang/StringBuilder;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .end local v13           #temp:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 836
    .local v5, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 841
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 819
    .restart local v1       #buffer:Ljava/lang/StringBuilder;
    .restart local v2       #check:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    .restart local v9       #regex:Ljava/util/regex/Matcher;
    .restart local v13       #temp:Ljava/lang/String;
    :cond_3
    const/4 v15, 0x1

    :try_start_1
    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 820
    .local v7, key:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "0x"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 822
    .local v14, val:Ljava/lang/Long;
    invoke-virtual {v2, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 837
    .end local v1           #buffer:Ljava/lang/StringBuilder;
    .end local v2           #check:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .end local v9           #regex:Ljava/util/regex/Matcher;
    .end local v13           #temp:Ljava/lang/String;
    .end local v14           #val:Ljava/lang/Long;
    :catch_1
    move-exception v5

    .line 838
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_3

    .line 830
    .end local v5           #e:Ljava/io/IOException;
    .restart local v1       #buffer:Ljava/lang/StringBuilder;
    .restart local v2       #check:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    .restart local v9       #regex:Ljava/util/regex/Matcher;
    .restart local v13       #temp:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v15, "spoofer.patch"

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v3

    .line 832
    .local v3, compare:J
    cmp-long v15, v3, v11

    if-eqz v15, :cond_2

    .line 833
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method public progressListener()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/Patcher;->mShellProgress:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    invoke-virtual {v0}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->setupProgressThread()V

    .line 276
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/Patcher;->mShellProgress:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    invoke-virtual {v0}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->start()V

    .line 277
    return-void
.end method

.method public pushSpoofer()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 502
    const-string v0, "framework/com/spoofer/util"

    .line 504
    .local v0, spooferLoc:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mkdir -p "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 506
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/Patcher;->success()Z

    move-result v2

    if-nez v2, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v1

    .line 509
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "busybox mv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Spoofer.smali"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 511
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/Patcher;->success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "busybox mv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KMXmlFile.smali"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 516
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/Patcher;->success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "busybox mv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KMXmlFile$XmlData.smali"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/Patcher;->success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "busybox mv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KMXmlFile$KMXmlFileException.smali"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 526
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/Patcher;->success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public putResources()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 544
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 546
    .local v0, kcfolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mkdir "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/Patcher;->success()Z

    move-result v2

    if-nez v2, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v1

    .line 552
    :cond_1
    const-string v2, "777"

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/killermobilecrjb/patcher/Patcher;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    :cond_2
    invoke-direct {p0}, Lcom/killermobilecrjb/patcher/Patcher;->copyAssets()Z

    move-result v1

    .line 563
    .local v1, result:Z
    goto :goto_0
.end method

.method public rebootDevice()V
    .locals 2

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "busybox reboot -f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 369
    return-void
.end method

.method public recovery()V
    .locals 4

    .prologue
    .line 381
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/kmobile/recovery.tmp"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, recovered:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    const-string v2, "mount -o remount,rw -t yaffs2 `grep /system /proc/mounts | cut -d\' \' -f1` /system"

    invoke-virtual {p0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "busybox cp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "services.jar /system/framework/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "busybox cp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "framework.jar /system/framework/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 392
    const-string v2, "775"

    const-string v3, "/system/framework/services.jar"

    invoke-virtual {p0, v2, v3}, Lcom/killermobilecrjb/patcher/Patcher;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    .line 393
    const-string v2, "775"

    const-string v3, "/system/framework/framework.jar"

    invoke-virtual {p0, v2, v3}, Lcom/killermobilecrjb/patcher/Patcher;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    .line 395
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 396
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/Patcher;->rebootDevice()V

    .line 397
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 386
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeSmalis()Z
    .locals 2

    .prologue
    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rm -r "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "secphone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rm -r "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rm "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SecPhone.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rm "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SecPhone.tmp.aligned"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 926
    const/4 v0, 0x1

    return v0
.end method

.method public smali(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter "dir"
    .parameter "outFile"
    .parameter "heapSize"

    .prologue
    const/4 v3, 0x0

    .line 477
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v1, file:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, dexDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to create directory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 497
    :cond_0
    :goto_0
    return v3

    .line 484
    :cond_1
    const-string v4, "-R 777"

    sget-object v5, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/killermobilecrjb/patcher/Patcher;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 487
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, strHeapSize:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dalvikvm -Xmx"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "M -cp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "smali.jar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " org.jf.smali.main "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -o "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 491
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/Patcher;->success()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 494
    const-string v4, "777"

    invoke-virtual {p0, v4, p2}, Lcom/killermobilecrjb/patcher/Patcher;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public success()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 429
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/Patcher;->mSuccess:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 430
    const-string v1, "mSuccess: Returned got a null exception"

    invoke-static {v1}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 439
    :goto_0
    return v0

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/Patcher;->mSuccess:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/Patcher;->mSuccess:Ljava/lang/String;

    invoke-static {v1}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public verifyCRC([BJ)Z
    .locals 7
    .parameter "buffer"
    .parameter "crc"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    .line 569
    cmp-long v4, p2, v5

    if-nez v4, :cond_1

    .line 584
    :cond_0
    :goto_0
    return v3

    .line 574
    :cond_1
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 575
    .local v0, check:Ljava/util/zip/CRC32;
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 576
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 578
    .local v1, compare:J
    cmp-long v4, p2, v5

    if-gez v4, :cond_2

    .line 579
    const-wide v4, 0xffffffffL

    and-long/2addr p2, v4

    .line 584
    :cond_2
    cmp-long v4, v1, p2

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public verifyInstall(Lcom/killermobilecrjb/patcher/Patcher$Verification;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 590
    const/4 v1, 0x0

    .line 592
    .local v1, result:Z
    invoke-static {}, Lcom/killermobilecrjb/patcher/Patcher;->$SWITCH_TABLE$com$killermobilecrjb$patcher$Patcher$Verification()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/killermobilecrjb/patcher/Patcher$Verification;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 615
    :goto_0
    return v1

    .line 595
    :pswitch_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/app/SecPhone.apk"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 600
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v2, "/system/app/SecPhone.odex"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    const-string v2, "SecPhone.odex"

    sput-object v2, Lcom/killermobilecrjb/patcher/Patcher;->DEXNAME:Ljava/lang/String;

    goto :goto_0

    .line 606
    :cond_0
    const-string v2, "SecPhone.apk"

    sput-object v2, Lcom/killermobilecrjb/patcher/Patcher;->DEXNAME:Ljava/lang/String;

    goto :goto_0

    .line 611
    .end local v0           #file:Ljava/io/File;
    :pswitch_1
    invoke-static {}, Lcom/killermobilecrjb/patcher/Shell;->su()Z

    move-result v1

    goto :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public wasRecovered()Z
    .locals 2

    .prologue
    .line 372
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/kmobile/recovery.tmp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, recovered:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public wipe()V
    .locals 2

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rm -r "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 539
    return-void
.end method

.method public writeNewServices()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 401
    const-string v2, "mount -o remount,rw /system"

    invoke-virtual {p0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/Patcher;->success()Z

    move-result v2

    if-nez v2, :cond_0

    .line 423
    :goto_0
    return v1

    .line 405
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "busybox rm /system/app/SecPhone.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "busybox rm /system/app/SecPhone.odex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "busybox cp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SecPhone.tmp.aligned /system/app/SecPhone.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/killermobilecrjb/patcher/Patcher;->exec(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    const-string v2, "775"

    const-string v3, "/system/app/SecPhone.apk"

    invoke-virtual {p0, v2, v3}, Lcom/killermobilecrjb/patcher/Patcher;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    .line 414
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/app/SecPhone.apk"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, secPhone:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 417
    const-string v2, "Fatal: Could not locate SecPhone.apk in /system/app."

    invoke-static {v2}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
