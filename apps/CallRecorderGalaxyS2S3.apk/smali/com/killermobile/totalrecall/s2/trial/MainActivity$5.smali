.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/MainActivity;->requestTrialReset()V
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;)Lcom/killermobile/totalrecall/s2/trial/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 341
    new-instance v0, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    invoke-direct {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 342
    const-string v1, "Вы можете запросить новый триал только один раз. Нажмите кнопку ОК, чтобы продолжить."

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 343
    const-string v1, "Ok"

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;)V

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 388
    return-void
.end method
