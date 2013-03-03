.class Lcom/killermobile/totalrecall/s2/trial/SplashScreen$2;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/SplashScreen;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->finish()V

    .line 61
    return-void
.end method
