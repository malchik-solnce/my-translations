.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$10;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$10;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 491
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$10;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    #calls: Lcom/killermobile/totalrecall/s2/trial/MainActivity;->wizardPopup()V
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->access$3(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    .line 494
    new-instance v1, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$10;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    invoke-direct {v1, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 496
    .local v1, dlg:Lorg/appforce/ui/DialogBuilder$AlertDialog;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, MMM d, \'\'yy, h:mm a"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    const-string v2, "Это пробная версия была зарегистрирована. Она истекает "

    .line 499
    .local v2, expireMessage:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$10;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkResult:Lcom/killermobile/regchecks/CheckResult;
    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->access$5(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)Lcom/killermobile/regchecks/CheckResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/killermobile/regchecks/CheckResult;->getExpirationTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ". После этого, все записи будут ограничены до 1 минуты."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    .line 504
    const v3, 0x7f060022

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    .line 505
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setCancelable(Z)V

    .line 506
    invoke-virtual {v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 508
    return-void
.end method
