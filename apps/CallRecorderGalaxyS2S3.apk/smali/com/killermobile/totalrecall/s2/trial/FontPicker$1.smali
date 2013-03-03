.class Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;
.super Ljava/lang/Object;
.source "FontPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/FontPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/FontPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;)Lcom/killermobile/totalrecall/s2/trial/FontPicker;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 56
    new-instance v0, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    invoke-direct {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 57
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 58
    const v1, 0x7f06003b

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 59
    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 60
    const-string v1, "Proceed"

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/FontPicker$1$1;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/FontPicker$1$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 65
    return-void
.end method
