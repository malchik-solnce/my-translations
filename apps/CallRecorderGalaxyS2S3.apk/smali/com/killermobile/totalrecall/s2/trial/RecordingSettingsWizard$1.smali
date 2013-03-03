.class Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$1;
.super Ljava/lang/Object;
.source "RecordingSettingsWizard.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 188
    packed-switch p2, :pswitch_data_0

    .line 194
    :goto_0
    const/4 v2, 0x1

    .line 195
    .local v2, test:I
    const/4 v1, 0x0

    .line 197
    .local v1, result:Ljava/lang/String;
    packed-switch p2, :pswitch_data_1

    .line 210
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    iget-object v3, v3, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getNextTestNumber()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 217
    :goto_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result:: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 218
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->setTestResult(ILjava/lang/String;)V
    invoke-static {v3, v2, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->access$0(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    :cond_0
    :goto_3
    return-void

    .line 190
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #test:I
    :pswitch_0
    new-instance v3, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    invoke-direct {v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    const v4, 0x7f060022

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v3

    const v4, 0x7f0600c4

    invoke-virtual {v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    goto :goto_0

    .line 199
    .restart local v1       #result:Ljava/lang/String;
    .restart local v2       #test:I
    :pswitch_1
    const-string v1, "yes"

    .line 200
    goto :goto_1

    .line 202
    :pswitch_2
    const-string v1, "no"

    .line 203
    goto :goto_1

    .line 205
    :pswitch_3
    const-string v1, "maybe"

    goto :goto_1

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 219
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a002f
        :pswitch_0
    .end packed-switch

    .line 197
    :pswitch_data_1
    .packed-switch 0x7f0a002f
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
