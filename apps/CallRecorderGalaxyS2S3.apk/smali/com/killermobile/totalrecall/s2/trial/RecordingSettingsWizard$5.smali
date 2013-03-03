.class Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$5;
.super Ljava/lang/Object;
.source "RecordingSettingsWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setNextTestNumber(I)V

    .line 141
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->resetTestResult()V
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->access$3(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)V

    .line 142
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->info:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->access$2(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;)V

    .line 143
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->updateUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    const v2, 0x7f060029

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
