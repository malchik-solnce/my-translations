.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8$1;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showDialog(I)V

    .line 454
    return-void
.end method
