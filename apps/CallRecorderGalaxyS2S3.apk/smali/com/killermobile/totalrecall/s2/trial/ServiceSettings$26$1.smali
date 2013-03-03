.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26$1;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 934
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showDialog(I)V

    .line 936
    return-void
.end method
