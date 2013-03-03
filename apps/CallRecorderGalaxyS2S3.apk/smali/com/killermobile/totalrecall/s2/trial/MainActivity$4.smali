.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/MainActivity;->iTotalRecallService:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->access$1(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setHideRecordingStrategyDlg(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
