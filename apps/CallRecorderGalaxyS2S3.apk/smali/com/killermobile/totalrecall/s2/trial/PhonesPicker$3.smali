.class Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$3;
.super Ljava/lang/Object;
.source "PhonesPicker.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 288
    packed-switch p2, :pswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 291
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordingNumbersRecordSelected(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0

    .line 298
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordingNumbersRecordSelected(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 299
    :catch_1
    move-exception v0

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x7f0a001a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
