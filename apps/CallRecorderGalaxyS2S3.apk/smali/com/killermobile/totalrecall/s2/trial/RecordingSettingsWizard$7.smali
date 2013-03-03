.class Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;
.super Ljava/lang/Object;
.source "RecordingSettingsWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

.field private final synthetic val$num:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;->val$num:Landroid/widget/EditText;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AutoTests;->resetRecordingConditions(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V

    .line 271
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;->val$num:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setTestNumber(Ljava/lang/String;)V

    .line 273
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecorderAudioSource(I)V

    .line 275
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordAfterCallStart(Z)V

    .line 288
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, call:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;->val$num:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    const/4 v2, 0x1

    #setter for: Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->skipPoll:Z
    invoke-static {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;Z)V

    .line 291
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    invoke-virtual {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->startActivity(Landroid/content/Intent;)V

    .line 296
    .end local v0           #call:Landroid/content/Intent;
    :goto_1
    return-void

    .line 278
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gt-i9100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecorderAudioSource(I)V

    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    goto :goto_1

    .line 281
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecorderAudioSource(I)V

    goto :goto_0

    .line 284
    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hero"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dell streak"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    :cond_4
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecorderAudioSource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
