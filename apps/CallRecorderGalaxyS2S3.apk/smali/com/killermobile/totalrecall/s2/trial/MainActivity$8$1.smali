.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$8$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/MainActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/MainActivity$8;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$8$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/MainActivity$8;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$8$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/MainActivity$8;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity$8;->access$0(Lcom/killermobile/totalrecall/s2/trial/MainActivity$8;)Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    move-result-object v0

    #calls: Lcom/killermobile/totalrecall/s2/trial/MainActivity;->requestTrialReset()V
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V

    .line 455
    return-void
.end method
