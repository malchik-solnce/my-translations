.class public Lcom/killermobile/totalrecall/s2/trial/StorageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 12
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, state:Ljava/lang/String;
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->setStorageState(Ljava/lang/String;)V

    .line 16
    return-void
.end method
