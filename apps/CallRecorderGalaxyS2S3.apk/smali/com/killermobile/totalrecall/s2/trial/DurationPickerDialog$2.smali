.class Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$2;
.super Ljava/lang/Object;
.source "DurationPickerDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setHours(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 82
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 79
    return-void
.end method
