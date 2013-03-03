.class Lcom/killermobile/totalrecall/s2/trial/AudioSettings$2;
.super Ljava/lang/Object;
.source "AudioSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_0
    :pswitch_0
    return-void

    .line 110
    :pswitch_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMaxDurationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_2
    :try_start_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMaxSizeEnabled(Z)V

    goto :goto_0

    .line 116
    :pswitch_3
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMinDurationEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0004
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
