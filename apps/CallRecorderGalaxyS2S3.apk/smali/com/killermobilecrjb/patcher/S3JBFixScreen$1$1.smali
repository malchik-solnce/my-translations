.class Lcom/killermobilecrjb/patcher/S3JBFixScreen$1$1;
.super Ljava/lang/Thread;
.source "S3JBFixScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;


# direct methods
.method constructor <init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$1$1;->this$1:Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;

    .line 766
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$1$1;->this$1:Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;

    #getter for: Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;
    invoke-static {v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;->access$0(Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;)Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    move-result-object v0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v0}, Lcom/killermobilecrjb/patcher/Patcher;->rebootDevice()V

    .line 769
    return-void
.end method
