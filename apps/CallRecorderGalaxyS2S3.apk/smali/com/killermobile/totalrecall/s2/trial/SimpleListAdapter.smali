.class public Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;
.super Lorg/appforce/ui/ThemedBaseAdapter;
.source "SimpleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private disableSelection:Z

.field private final nameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/killermobile/totalrecall/contacts/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private pojos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/contacts/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private final search:Landroid/widget/AutoCompleteTextView;

.field private sortAdapter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/AutoCompleteTextView;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "search"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/contacts/ContactItem;",
            ">;",
            "Landroid/widget/AutoCompleteTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, pojos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    invoke-direct {p0}, Lorg/appforce/ui/ThemedBaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->sortAdapter:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->disableSelection:Z

    .line 217
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->nameComparator:Ljava/util/Comparator;

    .line 40
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->context:Landroid/content/Context;

    .line 41
    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    .line 42
    :cond_0
    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->search:Landroid/widget/AutoCompleteTextView;

    .line 43
    return-void
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->search:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method


# virtual methods
.method public dataChanged(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/contacts/ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, pojos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    .line 165
    :goto_0
    iget-boolean v3, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->sortAdapter:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->nameComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    :cond_0
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->search:Landroid/widget/AutoCompleteTextView;

    if-eqz v3, :cond_1

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, searchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    monitor-enter v4

    .line 170
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v2, toAdd:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 169
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->search:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->context:Landroid/content/Context;

    const v6, 0x7f03002e

    invoke-direct {v4, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->search:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$2;

    invoke-direct {v4, p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    .end local v1           #searchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #toAdd:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->notifyDataSetChanged()V

    .line 190
    return-void

    .line 163
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    goto :goto_0

    .line 171
    .restart local v1       #searchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #toAdd:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 172
    .local v0, pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 173
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_4
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    .end local v0           #pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    .end local v2           #toAdd:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public disableSelection()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->disableSelection:Z

    .line 101
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->notifyDataSetChanged()V

    .line 102
    return-void
.end method

.method public enableSelection()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->disableSelection:Z

    .line 106
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/contacts/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Lcom/killermobile/totalrecall/contacts/ContactItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/contacts/ContactItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->getItem(I)Lcom/killermobile/totalrecall/contacts/ContactItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getResultData()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/contacts/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    return-object v1

    .line 155
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 156
    .local v0, pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const v5, 0x7f0a00fb

    const/16 v4, 0x8

    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->context:Landroid/content/Context;

    const v3, 0x7f030027

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    :cond_0
    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;

    .line 63
    .local v0, holder:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;
    if-nez v0, :cond_1

    .line 64
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;

    .end local v0           #holder:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;
    invoke-direct {v0, v6}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;-><init>(Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;)V

    .line 65
    .restart local v0       #holder:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->title:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f0a00fd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->description:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f0a00fc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->hint:Landroid/widget/TextView;

    .line 68
    const v2, 0x7f0a00fa

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->selected:Landroid/widget/ImageView;

    .line 70
    iget-boolean v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->disableSelection:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->selected:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 76
    .local v1, pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->description:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5

    .line 80
    :cond_2
    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->hint:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->hint:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_3

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->hint:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/killermobile/totalrecall/contacts/ContactItem;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/killermobile/totalrecall/contacts/ContactItem;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setTag(Ljava/lang/Object;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 89
    :cond_4
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/killermobile/totalrecall/contacts/ContactItem;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 90
    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->selected:Landroid/widget/ImageView;

    const v3, 0x7f02008c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    :goto_1
    invoke-virtual {p2, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 95
    invoke-super {p0, p1, p2, p3}, Lorg/appforce/ui/ThemedBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 84
    :cond_5
    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->hint:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->hint:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->hint:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_6
    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$Holder;->selected:Landroid/widget/ImageView;

    const v3, 0x7f02006d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public invertSelection()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->notifyDataSetChanged()V

    .line 147
    return-void

    .line 143
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 144
    .local v0, pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setTag(Ljava/lang/Object;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    goto :goto_0

    .line 145
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setTag(Ljava/lang/Object;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    goto :goto_0
.end method

.method public removeDuplicates()V
    .locals 6

    .prologue
    .line 202
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v1, newPojos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v0, alreadyAdded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    monitor-enter v4

    .line 205
    :try_start_0
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 204
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->dataChanged(Ljava/util/ArrayList;)V

    .line 212
    return-void

    .line 205
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 206
    .local v2, pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    invoke-virtual {v2}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    invoke-virtual {v2}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    .end local v2           #pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public select(Ljava/lang/String;)V
    .locals 6
    .parameter "select"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    monitor-enter v3

    .line 119
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v1, toAdd:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 118
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 120
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 121
    .local v0, pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 122
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_3
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setTag(Ljava/lang/Object;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    goto :goto_1

    .line 118
    .end local v0           #pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    .end local v1           #toAdd:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public selectAll()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->notifyDataSetChanged()V

    .line 134
    return-void

    .line 131
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 132
    .local v0, pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setTag(Ljava/lang/Object;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    goto :goto_0
.end method

.method public selectNone()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->notifyDataSetChanged()V

    .line 140
    return-void

    .line 137
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 138
    .local v0, pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setTag(Ljava/lang/Object;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    goto :goto_0
.end method

.method public setSortAdapter(Z)V
    .locals 0
    .parameter "sort"

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->sortAdapter:Z

    .line 231
    return-void
.end method

.method public showOnlyWithNumbers()V
    .locals 5

    .prologue
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v0, newPojos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    monitor-enter v3

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 194
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->dataChanged(Ljava/util/ArrayList;)V

    .line 199
    return-void

    .line 195
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 196
    .local v1, pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    invoke-virtual {v1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v1           #pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public toggle(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/contacts/ContactItem;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/contacts/ContactItem;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setTag(Ljava/lang/Object;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/contacts/ContactItem;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->pojos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/killermobile/totalrecall/contacts/ContactItem;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setTag(Ljava/lang/Object;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 113
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->notifyDataSetChanged()V

    .line 114
    return-void

    .line 111
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
