.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$22;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$22;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x0

    .line 797
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$22;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCalls()I

    move-result v2

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v0

    .line 798
    .local v0, calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    if-eqz p2, :cond_0

    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq v0, v2, :cond_0

    .line 799
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$22;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const-string v3, "Auto recording is enabled"

    const-string v4, "You need to set the recording to \"None\" in the Service tab in order to use this feature"

    #calls: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$1(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .end local v0           #calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :cond_0
    :goto_0
    return-void

    .line 803
    :catch_0
    move-exception v1

    .line 804
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 805
    invoke-virtual {p1, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method
