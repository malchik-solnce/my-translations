.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkTrial()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 471
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    #calls: Lcom/killermobile/totalrecall/s2/trial/MainActivity;->wizardPopup()V
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->access$3(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    .line 474
    new-instance v1, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    invoke-direct {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 475
    const-string v2, "Эта копия зарегистрирована"

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 476
    const v2, 0x7f060022

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 477
    .local v0, dlg:Lorg/appforce/ui/DialogBuilder$AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setCancelable(Z)V

    .line 478
    invoke-virtual {v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 479
    return-void
.end method
