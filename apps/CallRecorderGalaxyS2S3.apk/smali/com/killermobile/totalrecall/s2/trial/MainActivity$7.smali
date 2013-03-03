.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$7;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity;->busyRegistering:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->access$2(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 435
    return-void
.end method
