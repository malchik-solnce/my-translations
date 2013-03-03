.class Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$3;
.super Ljava/lang/Object;
.source "TotalRecallService.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    .line 1971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1974
    const/16 v1, 0x320

    if-eq p2, v1, :cond_0

    .line 1975
    const/16 v1, 0x321

    if-ne p2, v1, :cond_1

    .line 1977
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->stopRecording(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1982
    :cond_1
    :goto_0
    return-void

    .line 1978
    :catch_0
    move-exception v0

    .line 1980
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
