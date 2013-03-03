.class Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;
.super Ljava/lang/Object;
.source "ThemePicker.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/ThemePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;)Lcom/killermobile/totalrecall/s2/trial/ThemePicker;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 158
    if-eqz p2, :cond_0

    .line 159
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    const/16 v1, 0x37

    #setter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentVibrationDuration:I
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$0(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;I)V

    .line 160
    new-instance v0, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    invoke-direct {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 161
    const v1, 0x7f0600b0

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 162
    const v1, 0x7f0600b1

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1$1;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 166
    const v1, 0x7f0600b2

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1$2;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNeutralButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 170
    const v1, 0x7f0600b3

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1$3;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    const/4 v1, 0x0

    #setter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentVibrationDuration:I
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$0(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;I)V

    goto :goto_0
.end method
