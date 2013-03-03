.class Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1$3;
.super Ljava/lang/Object;
.source "ThemePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1$3;->this$1:Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1$3;->this$1:Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;->access$0(Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;)Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    move-result-object v0

    const/16 v1, 0x4b

    #setter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentVibrationDuration:I
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$0(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;I)V

    .line 173
    return-void
.end method
