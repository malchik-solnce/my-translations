.class Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched$1;
.super Ljava/lang/Object;
.source "S3JBFixScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;


# direct methods
.method constructor <init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched$1;->this$1:Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 186
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched$1;->this$1:Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;

    #getter for: Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;
    invoke-static {v2}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;->access$2(Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;)Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    move-result-object v2

    iget-object v2, v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v2}, Lcom/killermobilecrjb/patcher/Patcher;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    const-string v2, "Information"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 188
    const-string v2, "Your device has already been patched successfully.\n"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 190
    const-string v2, "Ok"

    new-instance v3, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched$1$1;

    invoke-direct {v3, p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched$1$1;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 202
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 204
    return-void
.end method
