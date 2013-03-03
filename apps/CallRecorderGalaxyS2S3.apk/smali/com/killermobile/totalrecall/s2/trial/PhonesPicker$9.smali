.class Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$9;
.super Ljava/lang/Object;
.source "PhonesPicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

.field private final synthetic val$addManualNumber:Landroid/widget/EditText;

.field private final synthetic val$addManualSave:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;Landroid/widget/Button;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$9;->val$addManualSave:Landroid/widget/Button;

    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$9;->val$addManualNumber:Landroid/widget/EditText;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$9;->val$addManualSave:Landroid/widget/Button;

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$9;->val$addManualNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 206
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 205
    return-void
.end method
