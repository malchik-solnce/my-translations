.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$14;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$14;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$14;)Lcom/killermobile/totalrecall/s2/trial/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 554
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$14;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 559
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$14;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    #calls: Lcom/killermobile/totalrecall/s2/trial/MainActivity;->wizardPopup()V
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->access$3(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    .line 562
    new-instance v1, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$14;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    invoke-direct {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 563
    const-string v2, "Вы уже использовали демо-период. Все записи будут ограничены до 1 минуты."

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 564
    const-string v2, "Полная версия"

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/MainActivity$14$1;

    invoke-direct {v3, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$14$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity$14;)V

    invoke-virtual {v1, v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 568
    const-string v2, "Ok"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 569
    const-string v2, "Новый триал"

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/MainActivity$14$2;

    invoke-direct {v3, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$14$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity$14;)V

    invoke-virtual {v1, v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNeutralButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 576
    .local v0, dlg:Lorg/appforce/ui/DialogBuilder$AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setCancelable(Z)V

    .line 577
    invoke-virtual {v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 578
    return-void
.end method
