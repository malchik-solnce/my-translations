.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$2;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;

    .line 1218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 1220
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1221
    .local v1, msg:Landroid/content/Intent;
    const-string v2, "text/xml"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1222
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    move-result-object v3

    const v4, 0x7f0600a4

    invoke-virtual {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "##"

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    move-result-object v5

    const v6, 0x7f060021

    invoke-virtual {v5, v6}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1223
    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    invoke-static {v4}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    move-result-object v4

    const v5, 0x7f0600a5

    invoke-virtual {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1225
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    :goto_0
    return-void

    .line 1226
    :catch_0
    move-exception v0

    .line 1227
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$4;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    move-result-object v2

    const v3, 0x7f060029

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
