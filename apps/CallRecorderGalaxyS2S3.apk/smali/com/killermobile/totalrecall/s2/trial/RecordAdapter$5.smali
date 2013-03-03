.class Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$5;
.super Ljava/lang/Object;
.source "RecordAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

.field private final synthetic val$entry:Lcom/killermobile/totalrecall/s2/trial/Record;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;Lcom/killermobile/totalrecall/s2/trial/Record;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$5;->val$entry:Lcom/killermobile/totalrecall/s2/trial/Record;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 180
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->markedItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->access$0(Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$5;->val$entry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->markedItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->access$0(Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$5;->val$entry:Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
