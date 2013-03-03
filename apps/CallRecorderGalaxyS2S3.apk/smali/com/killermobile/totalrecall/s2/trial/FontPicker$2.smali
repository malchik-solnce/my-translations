.class Lcom/killermobile/totalrecall/s2/trial/FontPicker$2;
.super Ljava/lang/Object;
.source "FontPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/FontPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/FontPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 70
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v0

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    const-string v2, "EXTRA_PICKED_FONT"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FontPicker;->currentPick:Lorg/appforce/ui/Font;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->access$1(Lcom/killermobile/totalrecall/s2/trial/FontPicker;)Lorg/appforce/ui/Font;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->addTempStuff(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->setResult(I)V

    .line 72
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->finish()V

    .line 73
    return-void
.end method
