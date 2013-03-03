.class Lcom/killermobile/totalrecall/s2/trial/SplashScreen$5;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://killermobile.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v0, siteIn:Landroid/content/Intent;
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    invoke-virtual {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void
.end method
