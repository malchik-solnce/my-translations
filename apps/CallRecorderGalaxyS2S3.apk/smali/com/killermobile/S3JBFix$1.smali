.class Lcom/killermobile/S3JBFix$1;
.super Ljava/lang/Object;
.source "S3JBFix.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/S3JBFix;->showUI(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/S3JBFix$1;->val$context:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/killermobile/S3JBFix$1;->val$context:Landroid/content/Context;

    #calls: Lcom/killermobile/S3JBFix;->fixNow(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/killermobile/S3JBFix;->access$0(Landroid/content/Context;)V

    .line 49
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 50
    return-void
.end method
