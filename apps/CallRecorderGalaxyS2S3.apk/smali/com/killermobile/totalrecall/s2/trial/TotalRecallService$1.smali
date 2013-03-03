.class Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$1;
.super Landroid/os/Handler;
.source "TotalRecallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    .line 202
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 204
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->stopRecording(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
