.class Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$1;
.super Ljava/lang/Object;
.source "SimpleListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;
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
        "Lcom/killermobile/totalrecall/contacts/ContactItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/killermobile/totalrecall/contacts/ContactItem;Lcom/killermobile/totalrecall/contacts/ContactItem;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 220
    invoke-virtual {p2}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    .line 221
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p2}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/killermobile/totalrecall/contacts/ContactItem;

    check-cast p2, Lcom/killermobile/totalrecall/contacts/ContactItem;

    invoke-virtual {p0, p1, p2}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$1;->compare(Lcom/killermobile/totalrecall/contacts/ContactItem;Lcom/killermobile/totalrecall/contacts/ContactItem;)I

    move-result v0

    return v0
.end method
