.class Lcom/killermobile/S2CallRec$1;
.super Ljava/lang/Object;
.source "S2CallRec.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/S2CallRec;->showUI(Landroid/content/Context;)Z
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
    iput-object p1, p0, Lcom/killermobile/S2CallRec$1;->val$context:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/killermobile/S2CallRec$1;->val$context:Landroid/content/Context;

    #calls: Lcom/killermobile/S2CallRec;->fixNow(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/killermobile/S2CallRec;->access$0(Landroid/content/Context;)V

    .line 54
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 55
    return-void
.end method
