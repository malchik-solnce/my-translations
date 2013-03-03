.class public Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;
.super Landroid/os/FileObserver;
.source "Record.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordObserver"
.end annotation


# instance fields
.field private final directory:Ljava/lang/String;

.field private from:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "directory"

    .prologue
    .line 39
    const/16 v0, 0x2c0

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->from:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->directory:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "directory"
    .parameter "from"

    .prologue
    .line 44
    const/16 v0, 0x2c0

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->from:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->directory:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->from:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->from:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .parameter "event"
    .parameter "path"

    .prologue
    const/16 v4, 0x2f

    .line 50
    sparse-switch p1, :sswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 53
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->directory:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->from:Ljava/lang/String;

    goto :goto_0

    .line 57
    :sswitch_1
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getCID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->from:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->directory:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    #calls: Lcom/killermobile/totalrecall/s2/trial/Record;->setPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->access$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->from:Ljava/lang/String;

    goto :goto_0

    .line 62
    :sswitch_2
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getCID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/Record$RecordObserver;->directory:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/Record;->delete(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 50
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x200 -> :sswitch_2
    .end sparse-switch
.end method
