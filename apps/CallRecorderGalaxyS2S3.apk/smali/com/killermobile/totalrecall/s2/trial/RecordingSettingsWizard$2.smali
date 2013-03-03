.class Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$2;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->test()V
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->access$1(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 94
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    const v2, 0x7f060029

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
