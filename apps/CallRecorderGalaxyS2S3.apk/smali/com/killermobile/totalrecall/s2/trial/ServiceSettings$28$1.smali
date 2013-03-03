.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28$1;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;

.field private final synthetic val$currPass:Landroid/widget/EditText;

.field private final synthetic val$currentPassword:Ljava/lang/String;

.field private final synthetic val$passwordEntered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic val$saveBtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28$1;->val$currPass:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28$1;->val$currentPassword:Ljava/lang/String;

    iput-object p4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28$1;->val$passwordEntered:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28$1;->val$saveBtn:Landroid/widget/Button;

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "di"
    .parameter "w"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28$1;->val$currPass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28$1;->val$currentPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28$1;->val$passwordEntered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1086
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28$1;->val$saveBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 1089
    :goto_0
    return-void

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    move-result-object v0

    const-string v1, "Wrong password"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
