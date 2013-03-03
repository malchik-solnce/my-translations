.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ValidateChecksum;
.super Ljava/lang/Thread;
.source "RecordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidateChecksum"
.end annotation


# static fields
.field public static final FAIL:I = -0x1

.field public static final SUCCESS:I = 0x1


# instance fields
.field private final checksum:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final result:Landroid/os/Message;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "checksum"
    .parameter "path"
    .parameter "result"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ValidateChecksum;->checksum:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ValidateChecksum;->path:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ValidateChecksum;->result:Landroid/os/Message;

    .line 82
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ValidateChecksum;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/Record;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, calculatedChecksum:Ljava/lang/String;
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ValidateChecksum;->result:Landroid/os/Message;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ValidateChecksum;->checksum:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v2, Landroid/os/Message;->what:I

    .line 89
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$ValidateChecksum;->result:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 91
    return-void

    .line 88
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
