.class Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$4;
.super Ljava/util/TimerTask;
.source "TotalRecallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->startOomAdj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    .line 2096
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #calls: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->startOomAdj()V
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$78(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V

    .line 2102
    return-void
.end method
