.class public Lcom/killermobile/totalrecall/s2/trial/PersistenceManager;
.super Ljava/lang/Object;
.source "PersistenceManager.java"


# static fields
.field public static final EXPORT_SETTINGS:Ljava/lang/String; = "tr_settings_export"

.field public static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/PersistenceManager;->lock:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadExternalData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .parameter "fileName"

    .prologue
    const/4 v6, 0x0

    .line 41
    sget-object v7, Lcom/killermobile/totalrecall/s2/trial/PersistenceManager;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 42
    const/4 v5, 0x0

    .line 43
    .local v5, object:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 44
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 46
    .local v3, in:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 48
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .local v4, in:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 49
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 56
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v5           #object:Ljava/lang/Object;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v5

    .line 50
    .restart local v5       #object:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 51
    .end local v5           #object:Ljava/lang/Object;
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_4
    monitor-exit v7

    move-object v5, v6

    goto :goto_0

    .line 52
    .end local v0           #e:Ljava/io/IOException;
    .restart local v5       #object:Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 53
    .end local v5           #object:Ljava/lang/Object;
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_2
    monitor-exit v7

    move-object v5, v6

    goto :goto_0

    .line 41
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v5       #object:Ljava/lang/Object;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .end local v5           #object:Ljava/lang/Object;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 52
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v5       #object:Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .end local v5           #object:Ljava/lang/Object;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 50
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v5       #object:Ljava/lang/Object;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .end local v5           #object:Ljava/lang/Object;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method static saveExternalData(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8
    .parameter "fileName"
    .parameter "object"

    .prologue
    .line 22
    sget-object v7, Lcom/killermobile/totalrecall/s2/trial/PersistenceManager;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 23
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 25
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 27
    .local v4, out:Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 29
    .end local v4           #out:Ljava/io/ObjectOutputStream;
    .local v5, out:Ljava/io/ObjectOutputStream;
    :try_start_3
    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 31
    :try_start_4
    monitor-exit v7

    const/4 v6, 0x1

    move-object v4, v5

    .end local v5           #out:Ljava/io/ObjectOutputStream;
    .restart local v4       #out:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .line 34
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return v6

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, ex:Ljava/io/IOException;
    :goto_1
    monitor-exit v7

    const/4 v6, 0x0

    goto :goto_0

    .line 22
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #out:Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 33
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #out:Ljava/io/ObjectOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5           #out:Ljava/io/ObjectOutputStream;
    .restart local v4       #out:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
