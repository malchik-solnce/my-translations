.class Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$4;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getNextTestNumber()I

    move-result v1

    .line 121
    .local v1, nextTest:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    const v3, 0x7f0600c2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 132
    .end local v1           #nextTest:I
    :goto_0
    return-void

    .line 125
    .restart local v1       #nextTest:I
    :cond_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setNextTestNumber(I)V

    .line 126
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->info:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->access$2(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;)V

    .line 127
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->updateUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v1           #nextTest:I
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    const v3, 0x7f060029

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
