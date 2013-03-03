.class Lcom/killermobile/totalrecall/s2/trial/FileView$2;
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

.field private final synthetic val$newDir:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/FileView;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$2;->val$newDir:Landroid/widget/EditText;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 208
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FileView;->file:Ljava/io/File;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/FileView;->access$0(Lcom/killermobile/totalrecall/s2/trial/FileView;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$2;->val$newDir:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, newFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FileView;->parent:Lcom/killermobile/totalrecall/s2/trial/FileView;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/FileView;->access$1(Lcom/killermobile/totalrecall/s2/trial/FileView;)Lcom/killermobile/totalrecall/s2/trial/FileView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FileView;->parent:Lcom/killermobile/totalrecall/s2/trial/FileView;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/FileView;->access$1(Lcom/killermobile/totalrecall/s2/trial/FileView;)Lcom/killermobile/totalrecall/s2/trial/FileView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/FileView;->refreshChildren()V

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FileView;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/FileView;->access$2(Lcom/killermobile/totalrecall/s2/trial/FileView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Created"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 217
    :goto_1
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/FileView;->refreshChildren()V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FileView;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/FileView;->access$2(Lcom/killermobile/totalrecall/s2/trial/FileView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Create failed"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
