.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1$3;->this$3:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1$3;->this$3:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;->this$2:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;)Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;

    move-result-object v0

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;)Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;

    move-result-object v0

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;)Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    move-result-object v0

    const-string v1, "Произошла ошибка"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 378
    return-void
.end method
