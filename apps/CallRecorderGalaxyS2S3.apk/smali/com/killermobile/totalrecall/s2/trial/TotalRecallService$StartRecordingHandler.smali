.class Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;
.super Landroid/os/Handler;
.source "TotalRecallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartRecordingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;


# direct methods
.method private constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V
    .locals 0
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1021
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->wizardState:Lcom/killermobile/totalrecall/s2/trial/WizardState;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$84(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/WizardState;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0, v2}, Lcom/killermobile/totalrecall/s2/trial/WizardState;->startNewRecord(Ljava/lang/String;I)V

    .line 1026
    return-void
.end method
