.class Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$3;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 106
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->results:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->access$2(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;)V

    .line 107
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->updateUI()V

    .line 108
    return-void
.end method
