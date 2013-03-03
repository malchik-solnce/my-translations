.class Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$1;
.super Ljava/lang/Object;
.source "TotalRecallApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    invoke-static {p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v3

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    invoke-static {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->storageState:Ljava/lang/String;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->access$1(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->access$2(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v2

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setStorageAvailable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->listeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->access$3(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 80
    :try_start_1
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->listeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->access$3(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 79
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    return-void

    .line 74
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->access$2(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v2

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->storageState:Ljava/lang/String;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->access$1(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setStorageUnavailable(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;

    .line 81
    .local v1, listener:Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    invoke-static {v4}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->access$2(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;->onServiceConnected(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V

    goto :goto_1

    .line 79
    .end local v1           #listener:Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    const/4 v1, 0x0

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->totalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V

    .line 87
    return-void
.end method
