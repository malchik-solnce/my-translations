.class Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity$1;
.super Ljava/lang/Object;
.source "TotalRecallServiceActivity.java"

# interfaces
.implements Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V
    .locals 1
    .parameter "srv"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;

    iput-object p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    .line 18
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->updateUI()V

    .line 20
    return-void
.end method
