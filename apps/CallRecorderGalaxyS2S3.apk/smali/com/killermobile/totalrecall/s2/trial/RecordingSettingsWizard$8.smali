.class Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;
.super Ljava/lang/Object;
.source "RecordingSettingsWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->onListChanged([Lcom/killermobile/totalrecall/s2/trial/Record;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

.field private final synthetic val$list:[Lcom/killermobile/totalrecall/s2/trial/Record;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;[Lcom/killermobile/totalrecall/s2/trial/Record;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->val$list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 403
    const-string v1, "list changed"

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->val$list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->val$list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->val$list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->val$list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCreated()J

    move-result-wide v1

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->lastCreated:J
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->access$5(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->val$list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->val$list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCreated()J

    move-result-wide v2

    #setter for: Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->lastCreated:J
    invoke-static {v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->access$6(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;J)V

    .line 410
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    invoke-direct {v0, v1, v5}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;-><init>(Landroid/content/Context;I)V

    .line 411
    .local v0, ad:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->val$list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->val$list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;->prepare(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;->show()V

    .line 414
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->skipPoll:Z
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->access$7(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 416
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->poll:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->access$2(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;)V

    .line 422
    :goto_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->skipPoll:Z
    invoke-static {v1, v5}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;Z)V

    .line 424
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->updateUI()V

    goto :goto_0

    .line 419
    :cond_2
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->info:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->access$2(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;)V

    goto :goto_1
.end method
