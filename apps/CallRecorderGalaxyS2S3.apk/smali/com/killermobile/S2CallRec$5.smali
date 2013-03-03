.class Lcom/killermobile/S2CallRec$5;
.super Ljava/lang/Object;
.source "S2CallRec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/S2CallRec;->fixNow(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$handler:Lcom/killermobile/S2CallRec$FixHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/killermobile/S2CallRec$FixHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/S2CallRec$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/killermobile/S2CallRec$5;->val$handler:Lcom/killermobile/S2CallRec$FixHandler;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/S2CallRec$5;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/killermobile/S2JBFix;->apply(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/killermobile/S2CallRec$5;->val$handler:Lcom/killermobile/S2CallRec$FixHandler;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/killermobile/S2CallRec$5;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 104
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
