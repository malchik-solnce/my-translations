.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;
.super Ljava/lang/Thread;
.source "RecordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportOK"
.end annotation


# static fields
.field public static final FAIL:I = -0x1

.field public static final SUCCESS:I = 0x1


# instance fields
.field private final delay:J

.field private final record:Lcom/killermobile/totalrecall/s2/trial/Record;

.field private final result:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/killermobile/totalrecall/s2/trial/Record;Landroid/os/Message;)V
    .locals 2
    .parameter "record"
    .parameter "result"

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;-><init>(Lcom/killermobile/totalrecall/s2/trial/Record;Landroid/os/Message;J)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/killermobile/totalrecall/s2/trial/Record;Landroid/os/Message;J)V
    .locals 0
    .parameter "record"
    .parameter "result"
    .parameter "delay"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;->record:Lcom/killermobile/totalrecall/s2/trial/Record;

    .line 109
    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;->result:Landroid/os/Message;

    .line 110
    iput-wide p3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;->delay:J

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    :try_start_0
    iget-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;->delay:J

    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;->record:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1}, Lcom/killermobile/totalrecall/s2/trial/Record;->resolveBroken(ZZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 118
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;->result:Landroid/os/Message;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;->record:Lcom/killermobile/totalrecall/s2/trial/Record;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ReportOK;->result:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 121
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method
