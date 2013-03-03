.class Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3$1;
.super Ljava/lang/Object;
.source "AudioSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;

.field private final synthetic val$mounts:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3$1;->val$mounts:[Ljava/lang/CharSequence;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->access$0(Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;)Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3$1;->val$mounts:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->showDestinationPicker(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->access$5(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;Ljava/lang/String;)V

    .line 166
    return-void
.end method
