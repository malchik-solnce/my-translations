.class Lcom/killermobile/totalrecall/s2/trial/StopRecording$1;
.super Ljava/lang/Object;
.source "StopRecording.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/StopRecording;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/StopRecording;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/StopRecording;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/StopRecording$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/StopRecording;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 31
    new-instance v2, Landroid/content/Intent;

    const-string v4, "action_stop_rec"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, stopRecIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/StopRecording$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/StopRecording;

    const/high16 v5, 0x4000

    invoke-static {v4, v6, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 33
    .local v3, stopRecPendingIntent:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/StopRecording$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/StopRecording;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/StopRecording;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 34
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 37
    :try_start_0
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/StopRecording$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/StopRecording;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/StopRecording;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->stopRecording(Z)V

    .line 38
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/StopRecording$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/StopRecording;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/StopRecording;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isSmsNotificationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/StopRecording$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/StopRecording;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/StopRecording;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->hideNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/StopRecording$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/StopRecording;

    invoke-virtual {v4}, Lcom/killermobile/totalrecall/s2/trial/StopRecording;->finish()V

    .line 43
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
