.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

.field private final synthetic val$autoStartRecord:Landroid/widget/CheckBox;

.field private final synthetic val$autoStopRecord:Landroid/widget/CheckBox;

.field private final synthetic val$showConstantNotif:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;->val$autoStartRecord:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;->val$autoStopRecord:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;->val$showConstantNotif:Landroid/widget/CheckBox;

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;->val$autoStartRecord:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStartRecording(Z)V

    .line 817
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;->val$autoStopRecord:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStopRecording(Z)V

    .line 818
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;->val$showConstantNotif:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictNotificationOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$23;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->dismissDialog(I)V

    .line 823
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
