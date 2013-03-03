.class Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$3;
.super Ljava/lang/Object;
.source "RecordAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/killermobile/totalrecall/s2/trial/Record;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/killermobile/totalrecall/s2/trial/Record;Lcom/killermobile/totalrecall/s2/trial/Record;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 336
    invoke-virtual {p1}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCreated()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCreated()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCreated()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCreated()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 338
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/killermobile/totalrecall/s2/trial/Record;

    check-cast p2, Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-virtual {p0, p1, p2}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$3;->compare(Lcom/killermobile/totalrecall/s2/trial/Record;Lcom/killermobile/totalrecall/s2/trial/Record;)I

    move-result v0

    return v0
.end method
