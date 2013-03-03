.class public Lcom/killermobile/totalrecall/s2/trial/FileView;
.super Landroid/widget/FrameLayout;
.source "FileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;
    }
.end annotation


# instance fields
.field private final branchImage:Landroid/widget/ImageView;

.field private final context:Landroid/content/Context;

.field private final createDirectory:Landroid/widget/ImageView;

.field private final depth:I

.field private expanded:Z

.field private final expandedChildren:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/killermobile/totalrecall/s2/trial/FileView;",
            ">;"
        }
    .end annotation
.end field

.field private final file:Ljava/io/File;

.field private final holder:Landroid/widget/LinearLayout;

.field private final iconImage:Landroid/widget/ImageView;

.field private final isLast:Z

.field private final listener:Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;

.field private final nameText:Landroid/widget/TextView;

.field private final nones:Landroid/widget/LinearLayout;

.field private final orderByName:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/killermobile/totalrecall/s2/trial/FileView;

.field private final removeDirectory:Landroid/widget/ImageView;

.field private selected:Z

.field private final selectedImage:Landroid/widget/ImageView;

.field private final showFiles:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/io/File;IZZLcom/killermobile/totalrecall/s2/trial/FileView;Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;)V
    .locals 7
    .parameter "context"
    .parameter "holder"
    .parameter "file"
    .parameter "depth"
    .parameter "isLast"
    .parameter "showFiles"
    .parameter "parent"
    .parameter "listener"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->expandedChildren:Ljava/util/LinkedList;

    .line 273
    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/FileView$1;

    invoke-direct {v5, p0}, Lcom/killermobile/totalrecall/s2/trial/FileView$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/FileView;)V

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->orderByName:Ljava/util/Comparator;

    .line 58
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->holder:Landroid/widget/LinearLayout;

    .line 60
    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->file:Ljava/io/File;

    .line 61
    iput p4, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->depth:I

    .line 62
    iput-boolean p5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->isLast:Z

    .line 63
    iput-boolean p6, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->showFiles:Z

    .line 64
    iput-object p7, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->parent:Lcom/killermobile/totalrecall/s2/trial/FileView;

    .line 65
    iput-object p8, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->listener:Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;

    .line 67
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 68
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030025

    const/4 v6, 0x1

    invoke-virtual {v2, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    const v5, 0x7f0a00ea

    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/FileView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->nones:Landroid/widget/LinearLayout;

    .line 71
    const v5, 0x7f0a00eb

    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/FileView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->branchImage:Landroid/widget/ImageView;

    .line 72
    const v5, 0x7f0a00ec

    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/FileView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->iconImage:Landroid/widget/ImageView;

    .line 73
    const v5, 0x7f0a00ee

    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/FileView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->selectedImage:Landroid/widget/ImageView;

    .line 74
    const v5, 0x7f0a00ef

    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/FileView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->createDirectory:Landroid/widget/ImageView;

    .line 75
    const v5, 0x7f0a00f0

    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/FileView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->removeDirectory:Landroid/widget/ImageView;

    .line 76
    const v5, 0x7f0a00ed

    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/FileView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->nameText:Landroid/widget/TextView;

    .line 78
    move-object v4, p7

    .line 79
    .local v4, pfv:Lcom/killermobile/totalrecall/s2/trial/FileView;
    add-int/lit8 v0, p4, -0x2

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_2

    .line 89
    if-nez p7, :cond_4

    .line 90
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->branchImage:Landroid/widget/ImageView;

    const v6, 0x7f020020

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    :goto_1
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_6

    const v1, 0x7f020067

    .line 97
    .local v1, icon:I
    :goto_2
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->selectedImage:Landroid/widget/ImageView;

    const v6, 0x7f020088

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->nameText:Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_0

    invoke-virtual {p0, p0}, Lcom/killermobile/totalrecall/s2/trial/FileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_0
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->selectedImage:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->createDirectory:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->removeDirectory:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->nameText:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->nameText:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 112
    :cond_1
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->createDirectory:Landroid/widget/ImageView;

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 113
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->removeDirectory:Landroid/widget/ImageView;

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 115
    sget-object v5, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lorg/appforce/ui/ThemedViews;->changeViewGroupTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;Z)V

    .line 117
    return-void

    .line 81
    .end local v1           #icon:I
    :cond_2
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v3, none:Landroid/widget/ImageView;
    iget-boolean v5, v4, Lcom/killermobile/totalrecall/s2/trial/FileView;->isLast:Z

    if-eqz v5, :cond_3

    .line 83
    const v5, 0x7f02001c

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    :goto_5
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->nones:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 86
    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/FileView;->parent:Lcom/killermobile/totalrecall/s2/trial/FileView;

    .line 79
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 84
    :cond_3
    const v5, 0x7f02001f

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 92
    .end local v3           #none:Landroid/widget/ImageView;
    :cond_4
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->branchImage:Landroid/widget/ImageView;

    if-eqz p5, :cond_5

    const v5, 0x7f02001d

    :goto_6
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_5
    const v5, 0x7f02001e

    goto :goto_6

    .line 96
    :cond_6
    const v1, 0x7f020066

    goto/16 :goto_2

    :cond_7
    const v1, 0x7f020065

    goto/16 :goto_2

    .line 112
    .restart local v1       #icon:I
    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    .line 113
    :cond_9
    const/4 v5, 0x0

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;ZLcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;)V
    .locals 9
    .parameter "context"
    .parameter "holder"
    .parameter "file"
    .parameter "showFiles"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 52
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/killermobile/totalrecall/s2/trial/FileView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/io/File;IZZLcom/killermobile/totalrecall/s2/trial/FileView;Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;)V

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/FileView;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/FileView;)Lcom/killermobile/totalrecall/s2/trial/FileView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->parent:Lcom/killermobile/totalrecall/s2/trial/FileView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/FileView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->file:Ljava/io/File;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 244
    :goto_0
    :pswitch_0
    return-void

    .line 197
    :pswitch_1
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->context:Landroid/content/Context;

    const v4, 0x7f030013

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, content:Landroid/view/View;
    const v3, 0x7f0a00a6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 201
    .local v2, newDir:Landroid/widget/EditText;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 203
    new-instance v3, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    const-string v4, "Создать каталог"

    invoke-virtual {v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 204
    .local v1, cr:Lorg/appforce/ui/DialogBuilder$AlertDialog;
    invoke-virtual {v1, v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setView(Landroid/view/View;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    .line 205
    const-string v3, "Создать"

    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/FileView$2;

    invoke-direct {v4, p0, v2}, Lcom/killermobile/totalrecall/s2/trial/FileView$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/FileView;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v3

    .line 218
    const-string v4, "Отмена"

    invoke-virtual {v3, v4, v6}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    goto :goto_0

    .line 222
    .end local v0           #content:Landroid/view/View;
    .end local v1           #cr:Lorg/appforce/ui/DialogBuilder$AlertDialog;
    .end local v2           #newDir:Landroid/widget/EditText;
    :pswitch_2
    new-instance v3, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    const-string v4, "Удалить каталог"

    invoke-virtual {v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v3

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Вы действительно хотите удалить каталог "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v3

    .line 224
    const-string v4, "Удалить"

    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/FileView$3;

    invoke-direct {v5, p0}, Lcom/killermobile/totalrecall/s2/trial/FileView$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/FileView;)V

    invoke-virtual {v3, v4, v5}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v3

    .line 234
    const-string v4, "Отмена"

    invoke-virtual {v3, v4, v6}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    goto/16 :goto_0

    .line 238
    :pswitch_3
    iget-boolean v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->expanded:Z

    if-eqz v5, :cond_0

    :goto_1
    invoke-virtual {p0, v3}, Lcom/killermobile/totalrecall/s2/trial/FileView;->setExpanded(Z)V

    goto/16 :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    .line 241
    :pswitch_4
    iget-boolean v5, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->selected:Z

    if-eqz v5, :cond_1

    :goto_2
    invoke-virtual {p0, v3}, Lcom/killermobile/totalrecall/s2/trial/FileView;->setSelected(Z)V

    goto/16 :goto_0

    :cond_1
    move v3, v4

    goto :goto_2

    .line 194
    :pswitch_data_0
    .packed-switch 0x7f0a00e9
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 248
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->context:Landroid/content/Context;

    const v3, 0x7f03001d

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, content:Landroid/view/View;
    const v2, 0x7f0a00c8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 252
    .local v1, newName:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 256
    new-instance v2, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Переименовать "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 257
    invoke-virtual {v2, v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setView(Landroid/view/View;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    const-string v3, "Готово"

    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/FileView$4;

    invoke-direct {v4, p0, v1}, Lcom/killermobile/totalrecall/s2/trial/FileView$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/FileView;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 269
    const-string v3, "Отмена"

    invoke-virtual {v2, v3, v6}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 270
    return v5
.end method

.method public refreshChildren()V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->expanded:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/FileView;->setExpanded(Z)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/FileView;->setExpanded(Z)V

    .line 124
    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 14
    .parameter "expanded"

    .prologue
    const/4 v13, 0x0

    .line 127
    iget-boolean v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->expanded:Z

    if-ne v1, p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 128
    :cond_0
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->expanded:Z

    .line 131
    const/4 v12, 0x0

    .local v12, pos:I
    :goto_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->holder:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v12, v1, :cond_4

    .line 135
    :cond_1
    if-eqz p1, :cond_a

    .line 136
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 138
    .local v9, files:[Ljava/io/File;
    if-eqz v9, :cond_3

    .line 140
    iget-boolean v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->showFiles:Z

    if-nez v1, :cond_2

    .line 141
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v10, fs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v2, v9

    move v1, v13

    :goto_2
    if-lt v1, v2, :cond_5

    .line 146
    new-array v1, v13, [Ljava/io/File;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9           #files:[Ljava/io/File;
    check-cast v9, [Ljava/io/File;

    .line 149
    .end local v10           #fs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v9       #files:[Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->orderByName:Ljava/util/Comparator;

    invoke-static {v9, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 151
    array-length v1, v9

    add-int/lit8 v11, v1, -0x1

    .local v11, i:I
    :goto_3
    if-gez v11, :cond_7

    .line 160
    .end local v11           #i:I
    :cond_3
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->iconImage:Landroid/widget/ImageView;

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 132
    .end local v9           #files:[Ljava/io/File;
    :cond_4
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->holder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 142
    .restart local v9       #files:[Ljava/io/File;
    .restart local v10       #fs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_5
    aget-object v3, v9, v1

    .line 143
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 152
    .end local v3           #f:Ljava/io/File;
    .end local v10           #fs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v11       #i:I
    :cond_7
    aget-object v3, v9, v11

    .line 153
    .restart local v3       #f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 151
    :goto_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 154
    :cond_8
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/FileView;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->holder:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->depth:I

    add-int/lit8 v4, v4, 0x1

    array-length v5, v9

    add-int/lit8 v5, v5, -0x1

    if-ne v11, v5, :cond_9

    const/4 v5, 0x1

    :goto_5
    iget-boolean v6, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->showFiles:Z

    iget-object v8, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->listener:Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/killermobile/totalrecall/s2/trial/FileView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/io/File;IZZLcom/killermobile/totalrecall/s2/trial/FileView;Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;)V

    .line 155
    .local v0, fv:Lcom/killermobile/totalrecall/s2/trial/FileView;
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->holder:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 156
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->expandedChildren:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v0           #fv:Lcom/killermobile/totalrecall/s2/trial/FileView;
    :cond_9
    move v5, v13

    .line 154
    goto :goto_5

    .line 164
    .end local v3           #f:Ljava/io/File;
    .end local v9           #files:[Ljava/io/File;
    .end local v11           #i:I
    :cond_a
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->expandedChildren:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 171
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->expandedChildren:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 173
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->iconImage:Landroid/widget/ImageView;

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 164
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/FileView;

    .line 166
    .restart local v0       #fv:Lcom/killermobile/totalrecall/s2/trial/FileView;
    invoke-virtual {v0, v13}, Lcom/killermobile/totalrecall/s2/trial/FileView;->setExpanded(Z)V

    .line 167
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->holder:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_6
.end method

.method public setSelected(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->selected:Z

    .line 180
    if-eqz p1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->selectedImage:Landroid/widget/ImageView;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->listener:Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->listener:Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;

    invoke-interface {v0, p0, p1}, Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;->onSelected(Lcom/killermobile/totalrecall/s2/trial/FileView;Z)V

    .line 187
    :cond_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FileView;->selectedImage:Landroid/widget/ImageView;

    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
