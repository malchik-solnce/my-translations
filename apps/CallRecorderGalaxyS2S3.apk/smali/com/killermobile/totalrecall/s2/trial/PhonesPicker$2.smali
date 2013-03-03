.class Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$2;
.super Ljava/lang/Object;
.source "PhonesPicker.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 264
    :pswitch_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 265
    .local v1, newCallType:Lcom/killermobile/totalrecall/s2/trial/CallType;
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForIn:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->access$0(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForOut:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->access$1(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 272
    :cond_1
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordingNumbersApplyFor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 269
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    goto :goto_1

    .line 260
    :pswitch_data_0
    .packed-switch 0x7f0a001c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
