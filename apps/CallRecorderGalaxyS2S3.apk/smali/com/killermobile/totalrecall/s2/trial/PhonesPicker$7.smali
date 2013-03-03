.class Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$7;
.super Ljava/lang/Object;
.source "PhonesPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$addManualName:Landroid/widget/EditText;

.field private final synthetic val$addManualNumber:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$7;->val$addManualName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$7;->val$addManualNumber:Landroid/widget/EditText;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->access$4(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/killermobile/totalrecall/contacts/ContactItem;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$7;->val$addManualName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$7;->val$addManualNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/killermobile/totalrecall/contacts/ContactItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->dismissDialog(I)V

    .line 191
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->access$2(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->access$4(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->dataChanged(Ljava/util/ArrayList;)V

    .line 192
    return-void
.end method
