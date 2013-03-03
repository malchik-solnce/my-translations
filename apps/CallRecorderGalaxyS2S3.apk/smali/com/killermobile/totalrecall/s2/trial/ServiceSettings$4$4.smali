.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$4;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$4;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;

    .line 1239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1243
    .local v0, other:Landroid/content/Intent;
    const-string v1, "market://search?q=pub:\"Killer Mobile\""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1245
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$4;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->startActivity(Landroid/content/Intent;)V

    .line 1246
    return-void
.end method
