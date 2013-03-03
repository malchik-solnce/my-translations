.class public Lcom/killermobile/totalrecall/s2/trial/Record;
.super Ljava/lang/Object;
.source "Record.java"

# interfaces
.implements Lcom/killermobile/totalrecall/s2/trial/DB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/Record$Broken;,
        Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
    }
.end annotation


# static fields
.field private static final observers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private broken:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

.field private calculatedChecksum:Ljava/lang/String;

.field private final callType:Lcom/killermobile/totalrecall/s2/trial/CallType;

.field private checksum:Ljava/lang/String;

.field private final cid:Ljava/lang/String;

.field private final created:J

.field private final duration:I

.field private final format:I

.field private path:Ljava/lang/String;

.field private final phone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/Record;->observers:Ljava/util/HashMap;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/killermobile/totalrecall/s2/trial/CallType;JIILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "cid"
    .parameter "path"
    .parameter "callType"
    .parameter "created"
    .parameter "duration"
    .parameter "format"
    .parameter "phone"
    .parameter "db"

    .prologue
    .line 86
    sget-object v10, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->WORKING:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    .line 87
    invoke-static {p2}, Lcom/killermobile/totalrecall/s2/trial/Record;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v11}, Lcom/killermobile/totalrecall/s2/trial/Record;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/killermobile/totalrecall/s2/trial/CallType;JIILjava/lang/String;Lcom/killermobile/totalrecall/s2/trial/Record$Broken;Ljava/lang/String;)V

    .line 89
    new-instance v12, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v12, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 91
    .local v12, cv:Landroid/content/ContentValues;
    const-string v1, "cid"

    invoke-virtual {v12, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "path"

    invoke-virtual {v12, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "call_type"

    invoke-virtual/range {p3 .. p3}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v1, "created"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string v1, "duration"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v1, "format"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v1, "phone"

    move-object/from16 v0, p8

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "broken"

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->broken:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v1, "checksum"

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->checksum:Ljava/lang/String;

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "records_library"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cid = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 101
    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 102
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 103
    const-string v1, "records_library"

    const-string v2, "cid"

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 105
    :cond_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->notifyRecordsListeners()V

    .line 107
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/killermobile/totalrecall/s2/trial/CallType;JIILjava/lang/String;Lcom/killermobile/totalrecall/s2/trial/Record$Broken;Ljava/lang/String;)V
    .locals 4
    .parameter "cid"
    .parameter "path"
    .parameter "callType"
    .parameter "created"
    .parameter "duration"
    .parameter "format"
    .parameter "phone"
    .parameter "broken"
    .parameter "checksum"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->cid:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->path:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->callType:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 115
    iput-wide p4, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->created:J

    .line 116
    iput p6, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->duration:I

    .line 117
    iput p7, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->format:I

    .line 118
    iput-object p8, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->phone:Ljava/lang/String;

    .line 119
    iput-object p9, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->broken:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    .line 120
    iput-object p10, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->checksum:Ljava/lang/String;

    .line 122
    invoke-static {p2}, Lcom/killermobile/totalrecall/s2/trial/Record;->getDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, directory:Ljava/lang/String;
    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/Record;->observers:Ljava/util/HashMap;

    monitor-enter v3

    .line 124
    :try_start_0
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/Record;->observers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;

    .line 125
    .local v1, observer:Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
    if-nez v1, :cond_0

    .line 126
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;

    .end local v1           #observer:Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
    invoke-direct {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v1       #observer:Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/Record;->observers:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->startWatching()V

    .line 123
    monitor-exit v3

    .line 132
    return-void

    .line 123
    .end local v1           #observer:Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic access$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-static {p0, p1, p2, p3}, Lcom/killermobile/totalrecall/s2/trial/Record;->setPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static acknowledgeNotFoundRecords(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 14
    .parameter "db"
    .parameter "cid"

    .prologue
    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 393
    const-string v1, "records_library"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "path"

    aput-object v0, v2, v13

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cid = \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 395
    const-string v3, "broken"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->NOT_FOUND:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 393
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 397
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 399
    .local v9, count:I
    new-array v11, v9, [Ljava/lang/String;

    .line 401
    .local v11, items:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-lt v10, v9, :cond_0

    .line 407
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 409
    const/4 v10, 0x0

    :goto_1
    if-lt v10, v9, :cond_1

    .line 412
    return-void

    .line 402
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 403
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 404
    .local v12, path:Ljava/lang/String;
    aput-object v12, v11, v10

    .line 401
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 410
    .end local v12           #path:Ljava/lang/String;
    :cond_1
    aget-object v0, v11, v10

    invoke-static {p1, v0, p0}, Lcom/killermobile/totalrecall/s2/trial/Record;->delete(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 409
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public static addObserver(Ljava/lang/String;Ljava/lang/String;)Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
    .locals 4
    .parameter "path"
    .parameter "from"

    .prologue
    .line 426
    invoke-static {p0}, Lcom/killermobile/totalrecall/s2/trial/Record;->getDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, directory:Ljava/lang/String;
    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/Record;->observers:Ljava/util/HashMap;

    monitor-enter v3

    .line 428
    :try_start_0
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/Record;->observers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;

    .line 429
    .local v1, observer:Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
    if-nez v1, :cond_0

    .line 430
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;

    .end local v1           #observer:Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
    invoke-direct {v1, v0, p1}, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .restart local v1       #observer:Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->startWatching()V

    .line 432
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/Record;->observers:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_0
    #setter for: Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->from:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->access$0(Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;Ljava/lang/String;)V

    .line 435
    monitor-exit v3

    return-object v1

    .line 427
    .end local v1           #observer:Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static calculateChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "path"

    .prologue
    .line 312
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v4, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 314
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 315
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 318
    .local v7, mis:Lcom/twmacinta/util/MD5InputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 320
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v8, Lcom/twmacinta/util/MD5InputStream;

    invoke-direct {v8, v1}, Lcom/twmacinta/util/MD5InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f

    .line 322
    .end local v7           #mis:Lcom/twmacinta/util/MD5InputStream;
    .local v8, mis:Lcom/twmacinta/util/MD5InputStream;
    const/16 v9, 0x2000

    :try_start_3
    new-array v2, v9, [B

    .line 323
    .local v2, buffer:[B
    :cond_0
    invoke-virtual {v8, v2}, Lcom/twmacinta/util/MD5InputStream;->read([B)I

    move-result v9

    if-gtz v9, :cond_0

    .line 325
    invoke-virtual {v8}, Lcom/twmacinta/util/MD5InputStream;->getMD5()Lcom/twmacinta/util/MD5;

    move-result-object v9

    invoke-virtual {v9}, Lcom/twmacinta/util/MD5;->asHex()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10

    move-result-object v9

    .line 335
    :try_start_4
    invoke-virtual {v8}, Lcom/twmacinta/util/MD5InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 338
    :goto_0
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 341
    :goto_1
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_2
    move-object v7, v8

    .end local v8           #mis:Lcom/twmacinta/util/MD5InputStream;
    .restart local v7       #mis:Lcom/twmacinta/util/MD5InputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 345
    .end local v2           #buffer:[B
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :goto_3
    return-object v9

    .line 327
    :catch_0
    move-exception v3

    .line 329
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 335
    :try_start_8
    invoke-virtual {v7}, Lcom/twmacinta/util/MD5InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 338
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 341
    :goto_6
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 345
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_7
    const/4 v9, 0x0

    goto :goto_3

    .line 330
    :catch_1
    move-exception v3

    .line 332
    .local v3, e:Ljava/io/IOException;
    :goto_8
    :try_start_b
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 335
    :try_start_c
    invoke-virtual {v7}, Lcom/twmacinta/util/MD5InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 338
    :goto_9
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 341
    :goto_a
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_7

    .line 342
    :catch_2
    move-exception v9

    goto :goto_7

    .line 333
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 335
    :goto_b
    :try_start_f
    invoke-virtual {v7}, Lcom/twmacinta/util/MD5InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 338
    :goto_c
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 341
    :goto_d
    :try_start_11
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    .line 343
    :goto_e
    throw v9

    .line 336
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #mis:Lcom/twmacinta/util/MD5InputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #buffer:[B
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #mis:Lcom/twmacinta/util/MD5InputStream;
    :catch_3
    move-exception v10

    goto :goto_0

    .line 339
    :catch_4
    move-exception v10

    goto :goto_1

    .line 342
    :catch_5
    move-exception v10

    goto :goto_2

    .line 336
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #buffer:[B
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #mis:Lcom/twmacinta/util/MD5InputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #mis:Lcom/twmacinta/util/MD5InputStream;
    :catch_6
    move-exception v9

    goto :goto_5

    .line 339
    :catch_7
    move-exception v9

    goto :goto_6

    .line 342
    :catch_8
    move-exception v9

    goto :goto_7

    .line 336
    .local v3, e:Ljava/io/IOException;
    :catch_9
    move-exception v9

    goto :goto_9

    .line 339
    :catch_a
    move-exception v9

    goto :goto_a

    .line 336
    .end local v3           #e:Ljava/io/IOException;
    :catch_b
    move-exception v10

    goto :goto_c

    .line 339
    :catch_c
    move-exception v10

    goto :goto_d

    .line 342
    :catch_d
    move-exception v10

    goto :goto_e

    .line 333
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_b

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_b

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #mis:Lcom/twmacinta/util/MD5InputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #mis:Lcom/twmacinta/util/MD5InputStream;
    :catchall_3
    move-exception v9

    move-object v7, v8

    .end local v8           #mis:Lcom/twmacinta/util/MD5InputStream;
    .restart local v7       #mis:Lcom/twmacinta/util/MD5InputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_b

    .line 330
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_e
    move-exception v3

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_f
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #mis:Lcom/twmacinta/util/MD5InputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #mis:Lcom/twmacinta/util/MD5InputStream;
    :catch_10
    move-exception v3

    move-object v7, v8

    .end local v8           #mis:Lcom/twmacinta/util/MD5InputStream;
    .restart local v7       #mis:Lcom/twmacinta/util/MD5InputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .line 327
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_11
    move-exception v3

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_12
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #mis:Lcom/twmacinta/util/MD5InputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #mis:Lcom/twmacinta/util/MD5InputStream;
    :catch_13
    move-exception v3

    move-object v7, v8

    .end local v8           #mis:Lcom/twmacinta/util/MD5InputStream;
    .restart local v7       #mis:Lcom/twmacinta/util/MD5InputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "cid"
    .parameter "path"
    .parameter "db"

    .prologue
    .line 165
    const-string v0, "records_library"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cid = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 165
    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 168
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->notifyRecordsListeners()V

    .line 170
    return-void
.end method

.method public static fromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/killermobile/totalrecall/s2/trial/Record;
    .locals 15
    .parameter "db"
    .parameter "cid"
    .parameter "path"

    .prologue
    .line 276
    const-string v2, "records_library"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "call_type"

    aput-object v14, v3, v13

    const/4 v13, 0x1

    .line 277
    const-string v14, "created"

    aput-object v14, v3, v13

    const/4 v13, 0x2

    const-string v14, "duration"

    aput-object v14, v3, v13

    const/4 v13, 0x3

    const-string v14, "format"

    aput-object v14, v3, v13

    const/4 v13, 0x4

    .line 278
    const-string v14, "phone"

    aput-object v14, v3, v13

    const/4 v13, 0x5

    const-string v14, "broken"

    aput-object v14, v3, v13

    const/4 v13, 0x6

    const-string v14, "checksum"

    aput-object v14, v3, v13

    .line 279
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "cid = \'"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' AND "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 280
    const-string v14, "path"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " = \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x27

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 279
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 276
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 282
    .local v12, c:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 284
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 286
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v4

    .line 287
    .local v4, callType:Lcom/killermobile/totalrecall/s2/trial/CallType;
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 288
    .local v5, created:J
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 289
    .local v7, duration:I
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 290
    .local v8, format:I
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 291
    .local v9, phone:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    move-result-object v10

    .line 292
    .local v10, broken:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;
    const/4 v2, 0x6

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 294
    .local v11, checksum:Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 296
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/Record;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/killermobile/totalrecall/s2/trial/Record;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/killermobile/totalrecall/s2/trial/CallType;JIILjava/lang/String;Lcom/killermobile/totalrecall/s2/trial/Record$Broken;Ljava/lang/String;)V

    .line 298
    .local v1, record:Lcom/killermobile/totalrecall/s2/trial/Record;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Lcom/killermobile/totalrecall/s2/trial/Record;->resolveBroken(ZZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 306
    .end local v1           #record:Lcom/killermobile/totalrecall/s2/trial/Record;
    .end local v4           #callType:Lcom/killermobile/totalrecall/s2/trial/CallType;
    .end local v5           #created:J
    .end local v7           #duration:I
    .end local v8           #format:I
    .end local v9           #phone:Ljava/lang/String;
    .end local v10           #broken:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;
    .end local v11           #checksum:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 304
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 306
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAll(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[Lcom/killermobile/totalrecall/s2/trial/Record;
    .locals 14
    .parameter "db"
    .parameter "cid"

    .prologue
    .line 369
    const-string v1, "records_library"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "path"

    aput-object v3, v2, v0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cid = \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 369
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 372
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 373
    .local v9, count:I
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 375
    .local v13, result:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/killermobile/totalrecall/s2/trial/Record;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-lt v11, v9, :cond_0

    .line 385
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 387
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/killermobile/totalrecall/s2/trial/Record;

    return-object v0

    .line 376
    :cond_0
    invoke-interface {v8, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 378
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 380
    .local v12, path:Ljava/lang/String;
    invoke-static {p0, p1, v12}, Lcom/killermobile/totalrecall/s2/trial/Record;->fromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/killermobile/totalrecall/s2/trial/Record;

    move-result-object v10

    .line 381
    .local v10, entry:Lcom/killermobile/totalrecall/s2/trial/Record;
    invoke-virtual {v13, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public static getDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 360
    const/4 v0, 0x0

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 364
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotFoundRecordsNumber(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 10
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 415
    const-string v1, "records_library"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "broken = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->NOT_FOUND:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 415
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 418
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 420
    .local v9, count:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 422
    return v9
.end method

.method public static hasValidExtension(Lcom/killermobile/totalrecall/s2/trial/Record;I)Z
    .locals 4
    .parameter "record"
    .parameter "format"

    .prologue
    const/4 v2, 0x1

    .line 350
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, path:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, ext:Ljava/lang/String;
    const-string v3, ".3gp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne p1, v2, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v2

    .line 353
    :cond_1
    const-string v3, ".mp4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    .line 354
    :cond_2
    const-string v3, ".amr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    .line 355
    :cond_3
    const-string v3, ".wav"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xfa4

    if-eq p1, v3, :cond_0

    .line 356
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static setPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "cid"
    .parameter "oldPath"
    .parameter "newPath"
    .parameter "db"

    .prologue
    .line 152
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 154
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "records_library"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cid = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 157
    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 156
    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->notifyRecordsListeners()V

    .line 161
    return-void
.end method


# virtual methods
.method public getBroken()Lcom/killermobile/totalrecall/s2/trial/Record$Broken;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->broken:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    return-object v0
.end method

.method public getCalculatedChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->calculatedChecksum:Ljava/lang/String;

    return-object v0
.end method

.method public getCallType()Lcom/killermobile/totalrecall/s2/trial/CallType;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->callType:Lcom/killermobile/totalrecall/s2/trial/CallType;

    return-object v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->created:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->duration:I

    return v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->format:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public resolveBroken(ZZLandroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "checkSum"
    .parameter "notify"
    .parameter "db"

    .prologue
    const/4 v5, 0x1

    .line 178
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 181
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->NOT_FOUND:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->broken:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    .line 194
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 196
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "broken"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->broken:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string v2, "records_library"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cid = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->cid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 199
    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 198
    invoke-virtual {p3, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 199
    if-ge v2, v5, :cond_1

    .line 201
    const-string v2, "cid"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->cid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "path"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->path:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v2, "call_type"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->callType:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v2, "created"

    iget-wide v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->created:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string v2, "duration"

    iget v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->duration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v2, "format"

    iget v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->format:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v2, "phone"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "checksum"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->checksum:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "records_library"

    const-string v3, "cid"

    invoke-virtual {p3, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 214
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->notifyRecordsListeners()V

    .line 215
    :cond_2
    return-void

    .line 184
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_3
    if-eqz p1, :cond_4

    .line 185
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/Record;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->calculatedChecksum:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->checksum:Ljava/lang/String;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->calculatedChecksum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 187
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->MODIFIED:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->broken:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    .line 190
    :cond_4
    :goto_1
    iget v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->format:I

    invoke-static {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/Record;->hasValidExtension(Lcom/killermobile/totalrecall/s2/trial/Record;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->EXTENSION:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->broken:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    goto/16 :goto_0

    .line 188
    :cond_5
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->WORKING:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->broken:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    goto :goto_1
.end method

.method public setChecksum(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "checksum"
    .parameter "db"

    .prologue
    const/4 v4, 0x1

    .line 223
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 225
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "checksum"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "records_library"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cid = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->cid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 227
    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 228
    if-ge v1, v4, :cond_0

    .line 230
    const-string v1, "cid"

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "path"

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "call_type"

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->callType:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v1, "created"

    iget-wide v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->created:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    const-string v1, "duration"

    iget v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->duration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v1, "format"

    iget v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->format:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v1, "phone"

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "broken"

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->broken:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v1, "records_library"

    const-string v2, "cid"

    invoke-virtual {p2, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 243
    :cond_0
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->checksum:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setPath(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "newPath"
    .parameter "db"

    .prologue
    const/4 v4, 0x1

    .line 139
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 141
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "records_library"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cid = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->cid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 143
    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->path:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/killermobile/totalrecall/s2/trial/Record;->addObserver(Ljava/lang/String;Ljava/lang/String;)Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;

    .line 146
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/Record;->path:Ljava/lang/String;

    .line 147
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4, p2}, Lcom/killermobile/totalrecall/s2/trial/Record;->resolveBroken(ZZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 148
    return-void
.end method
