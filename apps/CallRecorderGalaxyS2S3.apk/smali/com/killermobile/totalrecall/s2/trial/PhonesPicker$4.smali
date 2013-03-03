.class Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;
.super Ljava/lang/Object;
.source "PhonesPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;)Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    invoke-direct {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "Delete"

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 89
    const-string v1, "Delete this entry?"

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 90
    const v1, 0x7f060028

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4$1;

    invoke-direct {v2, p0, p3}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;I)V

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 97
    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 98
    return-void
.end method
