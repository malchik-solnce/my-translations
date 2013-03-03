.class Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$1;
.super Ljava/lang/Object;
.source "SequenceStrategy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->selectNumber(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;

.field private final synthetic val$numbers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$1;->val$numbers:[Ljava/lang/String;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$1;->val$numbers:[Ljava/lang/String;

    aget-object v1, v1, p2

    #calls: Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->onNumberSelected(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->access$3(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;Ljava/lang/String;)V

    .line 241
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 242
    return-void
.end method
