.class Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$4;
.super Ljava/lang/Object;
.source "RecordAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;-><init>(Landroid/content/Context;[Lcom/killermobile/totalrecall/s2/trial/Record;Landroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

.field private final synthetic val$searchablesFixed:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$4;->val$searchablesFixed:Ljava/util/ArrayList;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$4;->val$searchablesFixed:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    .local v0, select:Ljava/lang/String;
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    invoke-virtual {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->select(Ljava/lang/String;)V

    .line 80
    return-void
.end method
