.class Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2$1;
.super Ljava/lang/Object;
.source "S3JBFixScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2;


# direct methods
.method constructor <init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2$1;->this$2:Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 428
    const/4 v0, 0x1

    sput-boolean v0, Lcom/killermobilecrjb/patcher/Patcher;->ACK_DIALOG:Z

    .line 429
    sput p2, Lcom/killermobilecrjb/patcher/Patcher;->DIALOG_RESULT:I

    .line 430
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 431
    return-void
.end method
