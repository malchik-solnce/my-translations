.class public Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;
.super Landroid/app/Activity;
.source "DestinationPickerDialog.java"


# static fields
.field public static final EXTRA_CHOICE_MULTIPLE:Ljava/lang/String; = "com.killermobile.totalrecall.DestinationPickerDialog.CHOICE_MULTIPLE"

.field public static final EXTRA_DIRECTORIES:Ljava/lang/String; = "com.killermobile.totalrecall.DestinationPickerDialog.DIRECTORIES"

.field public static final EXTRA_ROOT:Ljava/lang/String; = "com.killermobile.totalrecall.DestinationPickerDialog.ROOT"

.field public static final EXTRA_SELECTION:Ljava/lang/String; = "com.killermobile.totalrecall.DestinationPickerDialog.SELECTION"

.field private static final MODE_MULTIPLE:I = 0x1

.field private static final MODE_SINGLE:I


# instance fields
.field private final buttonListener:Landroid/view/View$OnClickListener;

.field private cancel:Landroid/widget/Button;

.field private choiceMode:I

.field private holder:Landroid/widget/LinearLayout;

.field private ok:Landroid/widget/Button;

.field private final selectedListener:Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;

.field private final selection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/s2/trial/FileView;",
            ">;"
        }
    .end annotation
.end field

.field private showFiles:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->selection:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->selectedListener:Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;

    .line 53
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$2;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->buttonListener:Landroid/view/View$OnClickListener;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->choiceMode:I

    return v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->selection:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.killermobile.totalrecall.DestinationPickerDialog.CHOICE_MULTIPLE"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->choiceMode:I

    .line 82
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.killermobile.totalrecall.DestinationPickerDialog.DIRECTORIES"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->showFiles:Z

    .line 84
    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->requestWindowFeature(I)Z

    .line 86
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->setContentView(I)V

    .line 88
    const v0, 0x7f0a0087

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v2, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-static {v0, v2, v1}, Lorg/appforce/ui/ThemedViews;->changeViewGroupTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;Z)V

    .line 90
    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->holder:Landroid/widget/LinearLayout;

    .line 91
    const v0, 0x7f0a0089

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->ok:Landroid/widget/Button;

    .line 92
    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->cancel:Landroid/widget/Button;

    .line 94
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->holder:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/FileView;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->holder:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.killermobile.totalrecall.DestinationPickerDialog.ROOT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->showFiles:Z

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->selectedListener:Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/killermobile/totalrecall/s2/trial/FileView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;ZLcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->ok:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0, v6}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->setResult(I)V

    .line 100
    return-void

    :cond_0
    move v0, v6

    .line 81
    goto :goto_0

    :cond_1
    move v0, v1

    .line 82
    goto :goto_1
.end method
