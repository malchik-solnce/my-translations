.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;
.super Ljava/lang/Object;
.source "RecordsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->delete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field fails:I

.field successes:I

.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

.field private final synthetic val$toDelete:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->val$toDelete:Ljava/util/List;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->successes:I

    .line 437
    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->fails:I

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;)Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;
    .locals 1
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 439
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->val$toDelete:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 445
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9$1;

    invoke-direct {v4, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;)V

    invoke-virtual {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 452
    return-void

    .line 439
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/killermobile/totalrecall/s2/trial/Record;

    .line 440
    .local v1, r:Lcom/killermobile/totalrecall/s2/trial/Record;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 442
    .local v2, res:Z
    if-eqz v2, :cond_1

    iget v4, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->successes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->successes:I

    goto :goto_0

    .line 443
    :cond_1
    iget v4, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->fails:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->fails:I

    goto :goto_0
.end method
