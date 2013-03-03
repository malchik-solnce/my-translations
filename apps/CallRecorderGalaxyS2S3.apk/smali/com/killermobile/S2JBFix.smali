.class public Lcom/killermobile/S2JBFix;
.super Ljava/lang/Object;
.source "S2JBFix.java"


# static fields
.field private static final ASSET_FOLDER:Ljava/lang/String; = "alsa_fix"

.field private static TMP_DIR:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static folderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    sput-object v2, Lcom/killermobile/S2JBFix;->context:Landroid/content/Context;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alsa_fix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/S2JBFix;->TMP_DIR:Ljava/lang/String;

    .line 28
    sput-object v2, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    .line 29
    sput-object v2, Lcom/killermobile/S2JBFix;->folderList:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized apply(Landroid/content/Context;)V
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const-class v7, Lcom/killermobile/S2JBFix;

    monitor-enter v7

    :try_start_0
    sput-object p0, Lcom/killermobile/S2JBFix;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :try_start_1
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getService()Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v6

    const/4 v8, 0x4

    invoke-interface {v6, v8}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecorderAudioSource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    :goto_0
    :try_start_2
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, cw:Landroid/content/ContextWrapper;
    const-string v6, "alsa_fix"

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Landroid/content/ContextWrapper;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 45
    .local v1, directory:Ljava/io/File;
    const-string v6, ""

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "directory path: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/killermobile/S2JBFix;->TMP_DIR:Ljava/lang/String;

    .line 49
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    .line 50
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/killermobile/S2JBFix;->folderList:Ljava/util/ArrayList;

    .line 52
    sget-object v6, Lcom/killermobile/S2JBFix;->folderList:Ljava/util/ArrayList;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/lib"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v6, Lcom/killermobile/S2JBFix;->folderList:Ljava/util/ArrayList;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/lib/hw"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v6, Lcom/killermobile/S2JBFix;->folderList:Ljava/util/ArrayList;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/xbin"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v6, Lcom/killermobile/S2JBFix;->folderList:Ljava/util/ArrayList;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/usr"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v6, Lcom/killermobile/S2JBFix;->folderList:Ljava/util/ArrayList;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/usr/share"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v6, Lcom/killermobile/S2JBFix;->folderList:Ljava/util/ArrayList;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/usr/share/alsa"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v6, Lcom/killermobile/S2JBFix;->folderList:Ljava/util/ArrayList;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/usr/share/alsa/cards"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v6, Lcom/killermobile/S2JBFix;->folderList:Ljava/util/ArrayList;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/usr/share/alsa/pcm"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v6, Lcom/killermobile/S2JBFix;->folderList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 67
    invoke-static {v1}, Lcom/killermobile/S2JBFix;->populateFiles(Ljava/io/File;)V

    .line 69
    invoke-static {}, Lcom/killermobile/S2JBFix;->applyFix()Z

    .line 71
    const/4 v6, 0x0

    sput-object v6, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    .line 72
    const/4 v6, 0x0

    sput-object v6, Lcom/killermobile/S2JBFix;->folderList:Ljava/util/ArrayList;

    .line 73
    const/4 v6, 0x0

    sput-object v6, Lcom/killermobile/S2JBFix;->context:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    monitor-exit v7

    return-void

    .line 37
    .end local v0           #cw:Landroid/content/ContextWrapper;
    .end local v1           #directory:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 39
    .local v2, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 33
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 61
    .restart local v0       #cw:Landroid/content/ContextWrapper;
    .restart local v1       #directory:Ljava/io/File;
    :cond_0
    :try_start_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 62
    .local v3, f:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v4, internalFolder:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    .line 64
    .local v5, res:Z
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Создать каталог "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private static applyFix()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v2, Ljava/io/File;

    const-string v5, "/system/lib/hw/audio.primary.exynos4.so"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, fPrimary:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/lib/hw/audio_policy.exynos4.so"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, fPolicy:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    .line 163
    :goto_0
    return v5

    .line 115
    :cond_1
    const-string v4, "mount -o remount,rw -t yaffs2 `grep /system /proc/mounts | cut -d\' \' -f1` /system;"

    .line 117
    .local v4, toApply:Ljava/lang/String;
    sget-object v5, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 145
    const-string v5, ""

    const-string v6, "All files: done. Set dirs permissions now"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "chmod 755 /system/xbin/alsa_*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "chmod 755 /system/usr/share/alsa"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "chmod 755 /system/usr/share/alsa/*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "mount -o remount,ro -t yaffs2 `grep /system /proc/mounts | cut -d\' \' -f1` /system"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-static {v4}, Lcom/killermobile/S2JBFix;->executeSu(Ljava/lang/String;)V

    .line 161
    const-string v5, ""

    const-string v6, "Все сделано"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v5, 0x1

    goto :goto_0

    .line 117
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 118
    .local v3, fileInList:Ljava/io/File;
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "About to apply fix for: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 121
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 123
    :cond_4
    const-string v6, ""

    const-string v7, "File is exynos, direct override"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "cp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/killermobile/S2JBFix;->TMP_DIR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; chmod 644 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 129
    :cond_5
    const-string v6, ""

    const-string v7, "File is alsa, override if it does not exist:"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    .line 131
    .local v0, alsaFileExists:Z
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Alsa file exists: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-nez v0, :cond_2

    .line 134
    const-string v6, ""

    const-string v7, "Alsa file doesn\'t exist, about to add it"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "cp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/killermobile/S2JBFix;->TMP_DIR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; chmod 755 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method private static assetToInternal(Ljava/lang/String;Ljava/io/File;)Z
    .locals 9
    .parameter "filename"
    .parameter "internalDir"

    .prologue
    .line 169
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Copying to internal: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v6, Lcom/killermobile/S2JBFix;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 173
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 174
    .local v3, in:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 177
    .local v4, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 179
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exists "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "alsa_fix"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 181
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/killermobile/S2JBFix;->TMP_DIR:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v4           #out:Ljava/io/OutputStream;
    .local v5, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v3, v5}, Lcom/killermobile/S2JBFix;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 183
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 184
    const/4 v3, 0x0

    .line 185
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 186
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    const/4 v4, 0x0

    .line 188
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    const/4 v6, 0x1

    .line 191
    .end local v2           #f:Ljava/io/File;
    :goto_0
    return v6

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    const-string v6, ""

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v6, 0x0

    goto :goto_0

    .line 189
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v2       #f:Ljava/io/File;
    .restart local v5       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 198
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, read:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 201
    return-void

    .line 199
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static executeSu(Ljava/lang/String;)V
    .locals 4
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 223
    .local v1, p:Ljava/lang/Process;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 224
    .local v0, out:Ljava/io/DataOutputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 225
    const-string v2, "exit\n"

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 227
    return-void
.end method

.method private static mountSystem()V
    .locals 3

    .prologue
    .line 205
    :try_start_0
    const-string v1, "mount -o remount,rw -t yaffs2 `grep /system /proc/mounts | cut -d\' \' -f1` /system"

    invoke-static {v1}, Lcom/killermobile/S2JBFix;->executeSu(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .local v0, e:Ljava/io/IOException;
    :goto_0
    return-void

    .line 206
    .end local v0           #e:Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 207
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, ""

    const-string v2, "Error mounting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static populateFiles(Ljava/io/File;)V
    .locals 4
    .parameter "internalDir"

    .prologue
    .line 77
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/lib/libasound.so"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/lib/hw/audio.primary.exynos4.so"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/lib/hw/audio_policy.exynos4.so"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/alsa_amixer"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/alsa_aplay"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/alsa_ctl"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/alsa.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/cards/aliases.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/center_lfe.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/default.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/dmix.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/dpl.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/dsnoop.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/front.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/iec958.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/modem.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/rear.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/side.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/surround40.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/surround41.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/surround50.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/surround51.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/share/alsa/pcm/surround71.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v1, Lcom/killermobile/S2JBFix;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    return-void

    .line 101
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 102
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/killermobile/S2JBFix;->assetToInternal(Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private static unmountSystem()V
    .locals 3

    .prologue
    .line 214
    :try_start_0
    const-string v1, "mount -o remount,ro -t yaffs2 `grep /system /proc/mounts | cut -d\' \' -f1` /system"

    invoke-static {v1}, Lcom/killermobile/S2JBFix;->executeSu(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .local v0, e:Ljava/io/IOException;
    :goto_0
    return-void

    .line 215
    .end local v0           #e:Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 216
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, ""

    const-string v2, "Error unmounting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
