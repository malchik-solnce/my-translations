.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;)Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;
    .locals 1
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;)Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    move-result-object v0

    const-string v1, "Запрос, пожалуйста, подождите..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 348
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 383
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 384
    return-void
.end method
