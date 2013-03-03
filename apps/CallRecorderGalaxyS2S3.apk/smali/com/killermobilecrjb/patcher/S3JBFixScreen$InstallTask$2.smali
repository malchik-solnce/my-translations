.class Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2;
.super Ljava/lang/Object;
.source "S3JBFixScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;


# direct methods
.method constructor <init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2;->this$1:Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 420
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2;->this$1:Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;

    #getter for: Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;
    invoke-static {v2}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->access$4(Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;)Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    move-result-object v2

    iget-object v2, v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v2}, Lcom/killermobilecrjb/patcher/Patcher;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 421
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    const-string v2, "Backup"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 422
    const v2, 0x7f060020

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 424
    const-string v2, "Continue"

    new-instance v3, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2$1;

    invoke-direct {v3, p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2$1;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    const-string v2, "Cancel"

    new-instance v3, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2$2;

    invoke-direct {v3, p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2$2;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 444
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 445
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 446
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 447
    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 450
    return-void
.end method
