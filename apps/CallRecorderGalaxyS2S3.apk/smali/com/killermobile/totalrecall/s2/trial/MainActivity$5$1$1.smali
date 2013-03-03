.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;->this$2:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;)Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;
    .locals 1
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;->this$2:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 353
    :try_start_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->IMEI:Ljava/lang/String;

    invoke-static {v1}, Lcom/killermobile/regchecks/RegChecksAPI;->requestNewTrial(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;->this$2:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;)Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;

    move-result-object v1

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;)Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    move-result-object v1

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1$1;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;)V

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 361
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->setExpiration(Lcom/killermobile/regchecks/CheckResult;)V

    .line 362
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;->this$2:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;)Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;

    move-result-object v1

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;)Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    move-result-object v1

    #calls: Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkTrial()Z
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;->this$2:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;)Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;

    move-result-object v1

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;)Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    move-result-object v1

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1$2;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;)V

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 371
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;->this$2:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1;)Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;

    move-result-object v1

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5;)Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    move-result-object v1

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1$3;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity$5$1$1;)V

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
