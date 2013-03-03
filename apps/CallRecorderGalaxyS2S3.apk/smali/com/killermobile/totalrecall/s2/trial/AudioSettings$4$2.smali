.class Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4$2;
.super Ljava/lang/Object;
.source "AudioSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;->access$0(Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;)Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;->access$0(Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;)Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    move-result-object v2

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/SettingsWizard;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->startActivity(Landroid/content/Intent;)V

    .line 229
    return-void
.end method
