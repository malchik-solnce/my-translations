.class Lcom/killermobile/totalrecall/s2/trial/SplashScreen$3;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/SplashScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAcceptedEula(Z)V

    .line 80
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    const-class v4, Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 81
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    const v2, 0x7f060029

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 84
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
