.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$29;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$29;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    .line 1111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1114
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1128
    :goto_0
    return-void

    .line 1116
    :pswitch_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$29;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setUseDateForRecord(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1119
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$29;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setUseTimeForRecord(Z)V

    goto :goto_0

    .line 1122
    :pswitch_2
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$29;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setUseContactNameForRecord(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1114
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00ce
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
