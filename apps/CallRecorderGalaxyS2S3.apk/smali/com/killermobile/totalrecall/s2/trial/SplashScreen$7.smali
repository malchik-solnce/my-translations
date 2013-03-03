.class Lcom/killermobile/totalrecall/s2/trial/SplashScreen$7;
.super Ljava/util/TimerTask;
.source "SplashScreen.java"


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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    .line 127
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->finish()V

    .line 132
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method
