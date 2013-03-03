.class Lcom/killermobile/totalrecall/s2/trial/FileView$3;
.super Ljava/lang/Object;
.source "FileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/FileView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/FileView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FileView;->file:Ljava/io/File;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/FileView;->access$0(Lcom/killermobile/totalrecall/s2/trial/FileView;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FileView;->parent:Lcom/killermobile/totalrecall/s2/trial/FileView;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/FileView;->access$1(Lcom/killermobile/totalrecall/s2/trial/FileView;)Lcom/killermobile/totalrecall/s2/trial/FileView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FileView;->parent:Lcom/killermobile/totalrecall/s2/trial/FileView;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/FileView;->access$1(Lcom/killermobile/totalrecall/s2/trial/FileView;)Lcom/killermobile/totalrecall/s2/trial/FileView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/FileView;->refreshChildren()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FileView;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/FileView;->access$2(Lcom/killermobile/totalrecall/s2/trial/FileView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Removed"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FileView;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/FileView;->access$2(Lcom/killermobile/totalrecall/s2/trial/FileView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Remove failed"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
