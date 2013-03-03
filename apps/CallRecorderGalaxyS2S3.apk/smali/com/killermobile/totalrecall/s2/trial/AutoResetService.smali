.class public Lcom/killermobile/totalrecall/s2/trial/AutoResetService;
.super Landroid/content/BroadcastReceiver;
.source "AutoResetService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v2}, Lcom/killermobile/totalrecall/s2/trial/AutoResetService;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 17
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v2

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecording()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v1

    .line 21
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 24
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method
