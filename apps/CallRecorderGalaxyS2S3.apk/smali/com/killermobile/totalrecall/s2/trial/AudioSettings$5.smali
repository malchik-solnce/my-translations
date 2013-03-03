.class Lcom/killermobile/totalrecall/s2/trial/AudioSettings$5;
.super Ljava/lang/Object;
.source "AudioSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    #calls: Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->isFixAmbigous()Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->access$9(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->showDialog(I)V

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v1, 0x0

    #calls: Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->setDictaphoneEnabled(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;Z)V
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->access$7(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;Z)V

    .line 245
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->recordingStrategy:Landroid/widget/Button;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->access$8(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0
.end method
