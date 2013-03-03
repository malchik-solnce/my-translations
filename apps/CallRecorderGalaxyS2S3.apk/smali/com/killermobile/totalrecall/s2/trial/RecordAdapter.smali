.class public Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
.super Lorg/appforce/ui/ThemedBaseAdapter;
.source "RecordAdapter.java"


# static fields
.field public static final ORDER_CREATION:I = 0x3

.field public static final ORDER_DURATION:I = 0x2

.field public static final ORDER_NAME:I = 0x1


# instance fields
.field private final calendar:Ljava/util/GregorianCalendar;

.field private final comparatorCreationTime:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/killermobile/totalrecall/s2/trial/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final comparatorDuration:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/killermobile/totalrecall/s2/trial/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final comparatorName:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/killermobile/totalrecall/s2/trial/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final createdStr:Ljava/lang/StringBuilder;

.field private final duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

.field private enableMarking:Z

.field private final list:[Lcom/killermobile/totalrecall/s2/trial/Record;

.field private markedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/s2/trial/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final search:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/killermobile/totalrecall/s2/trial/Record;IZLandroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter "context"
    .parameter "list"
    .parameter "orderBy"
    .parameter "desc"
    .parameter "search"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p5}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;-><init>(Landroid/content/Context;[Lcom/killermobile/totalrecall/s2/trial/Record;Landroid/widget/AutoCompleteTextView;)V

    .line 87
    invoke-direct {p0, p3, p4}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->orderBy(IZ)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/killermobile/totalrecall/s2/trial/Record;Landroid/widget/AutoCompleteTextView;)V
    .locals 9
    .parameter "context"
    .parameter "list"
    .parameter "srch"

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-direct {p0}, Lorg/appforce/ui/ThemedBaseAdapter;-><init>()V

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->observers:Ljava/util/ArrayList;

    .line 39
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->calendar:Ljava/util/GregorianCalendar;

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    .line 41
    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;-><init>(J)V

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    .line 43
    iput-boolean v4, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->enableMarking:Z

    .line 44
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->markedItems:Ljava/util/ArrayList;

    .line 304
    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$1;

    invoke-direct {v5, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;)V

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->comparatorName:Ljava/util/Comparator;

    .line 321
    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$2;

    invoke-direct {v5, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;)V

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->comparatorDuration:Ljava/util/Comparator;

    .line 331
    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$3;

    invoke-direct {v5, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;)V

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->comparatorCreationTime:Ljava/util/Comparator;

    .line 53
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    .line 55
    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->search:Landroid/widget/AutoCompleteTextView;

    .line 57
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->search:Landroid/widget/AutoCompleteTextView;

    if-eqz v5, :cond_0

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, searchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v2, searchablesFixed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p2

    .line 61
    :try_start_0
    array-length v5, p2

    :goto_0
    if-lt v4, v5, :cond_1

    .line 60
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->search:Landroid/widget/AutoCompleteTextView;

    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x7f03002e

    invoke-direct {v5, p1, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->search:Landroid/widget/AutoCompleteTextView;

    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$4;

    invoke-direct {v5, p0, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    .end local v1           #searchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #searchablesFixed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 61
    .restart local v1       #searchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #searchablesFixed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    aget-object v0, p2, v4

    .line 62
    .local v0, r:Lcom/killermobile/totalrecall/s2/trial/Record;
    if-nez v0, :cond_3

    .line 61
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v3, toAdd:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getRecordName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_4
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPhone()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPhone()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPhone()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    const-string v8, " "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    .end local v0           #r:Lcom/killermobile/totalrecall/s2/trial/Record;
    .end local v3           #toAdd:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->markedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getRecordName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 278
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private orderBy(IZ)V
    .locals 5
    .parameter "orderBy"
    .parameter "desc"

    .prologue
    .line 282
    packed-switch p1, :pswitch_data_0

    .line 293
    :goto_0
    if-nez p2, :cond_0

    .line 294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_1

    .line 300
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->notifyDataSetInvalidated()V

    .line 301
    return-void

    .line 284
    :pswitch_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->comparatorName:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->comparatorDuration:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    .line 290
    :pswitch_2
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->comparatorCreationTime:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    .line 295
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    aget-object v1, v2, v0

    .line 296
    .local v1, temp:Lcom/killermobile/totalrecall/s2/trial/Record;
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 297
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    array-length v3, v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public disableMarking()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->enableMarking:Z

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->markedItems:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->notifyDataSetChanged()V

    .line 128
    return-void
.end method

.method public enableMarking()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->enableMarking:Z

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->markedItems:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->notifyDataSetChanged()V

    .line 122
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    array-length v0, v0

    return v0
.end method

.method public getData()[Lcom/killermobile/totalrecall/s2/trial/Record;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 111
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getMarked()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/s2/trial/Record;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->markedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 156
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    move-result v14

    const v15, 0x7f0a0104

    if-eq v14, v15, :cond_1

    .line 157
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->context:Landroid/content/Context;

    const v15, 0x7f03002b

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 160
    :cond_1
    const v14, 0x7f0a0107

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 162
    .local v4, format:Landroid/widget/ImageView;
    const v14, 0x7f0a0108

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 163
    .local v12, type:Landroid/widget/ImageView;
    const v14, 0x7f0a010a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 164
    .local v9, name:Landroid/widget/TextView;
    const v14, 0x7f0a0109

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 166
    .local v1, created:Landroid/widget/TextView;
    const v14, 0x7f0a0105

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 167
    .local v6, marker:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->enableMarking:Z

    if-eqz v14, :cond_6

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v6, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    if-eqz v14, :cond_5

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    aget-object v3, v14, p1

    .line 173
    .local v3, entry:Lcom/killermobile/totalrecall/s2/trial/Record;
    if-eqz v3, :cond_5

    .line 175
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->enableMarking:Z

    if-eqz v14, :cond_2

    .line 176
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->markedItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 178
    new-instance v14, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter$5;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;Lcom/killermobile/totalrecall/s2/trial/Record;)V

    invoke-virtual {v6, v14}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    :cond_2
    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCallType()Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v14

    sget-object v15, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq v14, v15, :cond_3

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v15, "In"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_3
    const v14, 0x7f020039

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 191
    .local v10, path:Ljava/lang/String;
    invoke-static {v10}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getRecordName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getBroken()Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    move-result-object v14

    sget-object v15, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->WORKING:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    if-ne v14, v15, :cond_b

    .line 194
    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getFormat()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    .line 213
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCreated()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 220
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->calendar:Ljava/util/GregorianCalendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v13

    .line 221
    .local v13, year:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->calendar:Ljava/util/GregorianCalendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 222
    .local v8, month:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->calendar:Ljava/util/GregorianCalendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 223
    .local v2, day:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->calendar:Ljava/util/GregorianCalendar;

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 224
    .local v5, hour:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->calendar:Ljava/util/GregorianCalendar;

    const/16 v15, 0xc

    invoke-virtual {v14, v15}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 225
    .local v7, minute:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->calendar:Ljava/util/GregorianCalendar;

    const/16 v15, 0xd

    invoke-virtual {v14, v15}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    .line 227
    .local v11, second:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getDuration()I

    move-result v15

    int-to-long v15, v15

    invoke-virtual/range {v14 .. v16}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setDuration(J)V

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/killermobile/totalrecall/s2/trial/Month;->getName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    const/16 v15, 0x3a

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    const/16 v15, 0x3a

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    invoke-virtual {v15}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->createdStr:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .end local v2           #day:I
    .end local v3           #entry:Lcom/killermobile/totalrecall/s2/trial/Record;
    .end local v5           #hour:I
    .end local v7           #minute:I
    .end local v8           #month:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #second:I
    .end local v13           #year:I
    :cond_5
    invoke-super/range {p0 .. p3}, Lorg/appforce/ui/ThemedBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    return-object v14

    .line 167
    :cond_6
    const/16 v14, 0x8

    goto/16 :goto_0

    .line 187
    .restart local v3       #entry:Lcom/killermobile/totalrecall/s2/trial/Record;
    :cond_7
    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCallType()Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v14

    sget-object v15, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq v14, v15, :cond_8

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Out"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_8
    const v14, 0x7f02003a

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 188
    :cond_9
    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCallType()Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v14

    sget-object v15, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq v14, v15, :cond_a

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Record"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_a
    const v14, 0x7f02008a

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 197
    .restart local v10       #path:Ljava/lang/String;
    :sswitch_0
    const v14, 0x7f020086

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 201
    :sswitch_1
    const v14, 0x7f02006c

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 205
    :sswitch_2
    const/high16 v14, 0x7f02

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 209
    :sswitch_3
    const v14, 0x7f02008b

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 217
    :cond_b
    const v14, 0x7f020021

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xfa4 -> :sswitch_3
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->observers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    monitor-exit v1

    .line 269
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public select(Ljava/lang/String;)V
    .locals 9
    .parameter "text"

    .prologue
    .line 135
    iget-object v8, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    monitor-enter v8

    .line 136
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    array-length v0, v0

    if-lt v3, v0, :cond_0

    .line 135
    monitor-exit v8

    .line 152
    :goto_1
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->list:[Lcom/killermobile/totalrecall/s2/trial/Record;

    aget-object v6, v0, v3

    .line 138
    .local v6, r:Lcom/killermobile/totalrecall/s2/trial/Record;
    if-nez v6, :cond_2

    .line 136
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v7, toAdd:Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getRecordName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_3
    invoke-virtual {v6}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 143
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_5

    .line 145
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 147
    :cond_5
    monitor-exit v8

    goto :goto_1

    .line 135
    .end local v6           #r:Lcom/killermobile/totalrecall/s2/trial/Record;
    .end local v7           #toAdd:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 272
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->observers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 272
    monitor-exit v1

    .line 275
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
