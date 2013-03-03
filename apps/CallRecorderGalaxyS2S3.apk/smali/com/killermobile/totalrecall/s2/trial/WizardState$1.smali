.class Lcom/killermobile/totalrecall/s2/trial/WizardState$1;
.super Ljava/lang/Thread;
.source "WizardState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/WizardState;->stopRecording(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/WizardState;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/WizardState;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WizardState;

    .line 280
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WizardState;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WizardState;->access$0(Lcom/killermobile/totalrecall/s2/trial/WizardState;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-result-object v1

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WizardState;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/WizardState;->access$0(Lcom/killermobile/totalrecall/s2/trial/WizardState;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-result-object v2

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WizardState;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/WizardState;->access$0(Lcom/killermobile/totalrecall/s2/trial/WizardState;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-result-object v3

    iget-object v3, v3, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordingType:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->saveFile(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
