.class Lcom/killermobile/S2CallRec$4;
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
    iput-object p1, p0, Lcom/killermobile/S2CallRec$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/killermobile/S2CallRec$4;->val$handler:Lcom/killermobile/S2CallRec$FixHandler;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    const-string v0, "s2callrec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/killermobile/S2CallRec$4;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/killermobile/S2CallRec$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/killermobile/S2CallRec;->fixCallRecording(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/killermobile/S2CallRec;->access$3(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/killermobile/S2CallRec$4;->val$handler:Lcom/killermobile/S2CallRec$FixHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/killermobile/S2CallRec$4;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 86
    return-void
.end method
