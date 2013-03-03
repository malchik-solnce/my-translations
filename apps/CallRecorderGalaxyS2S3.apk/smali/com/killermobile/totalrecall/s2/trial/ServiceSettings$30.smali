.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$30;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->warnForAutoStart()V
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$30;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    .line 1326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1332
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$30;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAutoStart(Z)V

    .line 1333
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$30;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoStart:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$9(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1334
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$30;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoStart:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$9(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1335
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$30;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->autoStart:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$9(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$30;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$10(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1340
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1341
    return-void

    .line 1336
    :catch_0
    move-exception v0

    .line 1337
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
