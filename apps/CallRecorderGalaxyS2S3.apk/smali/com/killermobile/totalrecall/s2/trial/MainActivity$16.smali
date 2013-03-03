.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkFull()V
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$16;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$16;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    #calls: Lcom/killermobile/totalrecall/s2/trial/MainActivity;->checkTrial()Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)Z

    .line 633
    return-void
.end method
