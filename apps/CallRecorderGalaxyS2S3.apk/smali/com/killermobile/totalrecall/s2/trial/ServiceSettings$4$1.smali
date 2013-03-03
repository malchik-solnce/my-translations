.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$1;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;

    .line 1186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1191
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    move-result-object v1

    iget-object v2, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRootNiceValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRootNiceValue(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    :goto_1
    return-void

    .line 1191
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
