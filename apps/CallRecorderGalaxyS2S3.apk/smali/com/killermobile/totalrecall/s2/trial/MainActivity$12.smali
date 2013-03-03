.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$12;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$12;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$12;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    const-string v1, "Произошла ошибка"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 534
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$12;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->finish()V

    .line 535
    return-void
.end method
