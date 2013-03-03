.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    .line 1144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    .locals 1
    .parameter

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1251
    :goto_0
    return-void

    .line 1150
    :pswitch_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showDialog(I)V

    goto :goto_0

    .line 1154
    :pswitch_1
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showDialog(I)V

    goto :goto_0

    .line 1158
    :pswitch_2
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showDialog(I)V

    goto :goto_0

    .line 1162
    :pswitch_3
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const-class v5, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1166
    :pswitch_4
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const-class v5, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1170
    :pswitch_5
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "Enter new password:"

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    goto :goto_0

    .line 1174
    :pswitch_6
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showDialog(I)V

    goto :goto_0

    .line 1179
    :pswitch_7
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRootNiceValue()Z

    move-result v1

    .line 1180
    .local v1, enabled:Z
    new-instance v2, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 1181
    const-string v3, "Bullet proof"

    invoke-virtual {v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v3

    .line 1182
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "This option performs a system tweak which makes TR harder to kill by the OS. It requires a rooted phone (make sure that TR is allowed to execute root commands).Currently the feature is "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1184
    if-eqz v1, :cond_0

    const-string v2, "enabled"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1185
    const-string v4, "Do you want to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_1

    const-string v2, "enable"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " it?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 1186
    const-string v3, "Yes"

    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$1;

    invoke-direct {v4, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)V

    invoke-virtual {v2, v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 1197
    const-string v3, "Cancel"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 1198
    invoke-virtual {v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1199
    .end local v1           #enabled:Z
    :catch_0
    move-exception v0

    .line 1201
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1184
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #enabled:Z
    :cond_0
    :try_start_1
    const-string v2, "disabled"

    goto :goto_1

    .line 1185
    :cond_1
    const-string v2, "disable"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1207
    .end local v1           #enabled:Z
    :pswitch_8
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 1211
    :pswitch_9
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 1215
    :pswitch_a
    new-instance v2, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020084

    invoke-virtual {v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setIcon(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 1216
    const v3, 0x7f060062

    invoke-virtual {v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 1217
    const v3, 0x7f060063

    invoke-virtual {v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 1218
    const v3, 0x7f060064

    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$2;

    invoke-direct {v4, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)V

    invoke-virtual {v2, v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 1230
    const v3, 0x7f060065

    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$3;

    invoke-direct {v4, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)V

    invoke-virtual {v2, v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNeutralButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 1239
    const v3, 0x7f060066

    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$4;

    invoke-direct {v4, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)V

    invoke-virtual {v2, v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 1247
    invoke-virtual {v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    goto/16 :goto_0

    .line 1148
    :pswitch_data_0
    .packed-switch 0x7f0a005d
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
