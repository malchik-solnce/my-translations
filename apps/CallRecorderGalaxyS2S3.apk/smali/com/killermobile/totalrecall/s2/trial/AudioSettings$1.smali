.class Lcom/killermobile/totalrecall/s2/trial/AudioSettings$1;
.super Ljava/lang/Object;
.source "AudioSettings.java"

# interfaces
.implements Lorg/appforce/ui/LogicalRadioGroup$LogicalChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/AudioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(IZ)V
    .locals 3
    .parameter "checkedId"
    .parameter "isChecked"

    .prologue
    .line 64
    packed-switch p1, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 68
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAudioFormat(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAudioFormat(I)V

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAudioFormat(I)V

    goto :goto_0

    .line 85
    :pswitch_3
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    #calls: Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->displayWAVAlert()V
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->access$0(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V

    .line 86
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/16 v2, 0xfa4

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAudioFormat(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
