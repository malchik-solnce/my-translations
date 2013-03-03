.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$11;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$11;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    const/16 v3, 0x70

    const/4 v4, 0x7

    const/16 v5, 0x14

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$11;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    const-string v1, "Произошла ошибка, убедитесь, что у Вас есть подключение к интернету"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 523
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$11;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->finish()V

    .line 525
    :cond_0
    return-void
.end method
