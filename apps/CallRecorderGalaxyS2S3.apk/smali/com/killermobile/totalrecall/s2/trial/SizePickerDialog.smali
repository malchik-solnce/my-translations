.class public Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;
.super Landroid/app/Activity;
.source "SizePickerDialog.java"


# static fields
.field public static final EXTRA_SIZE:Ljava/lang/String; = "com.killermobile.totalrecall.SIZE"


# instance fields
.field private final buttonListener:Landroid/view/View$OnClickListener;

.field private cancel:Landroid/widget/Button;

.field private ok:Landroid/widget/Button;

.field private size:Lcom/killermobile/totalrecall/s2/trial/MaxSize;

.field private units:Landroid/widget/RadioGroup;

.field private value:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->buttonListener:Landroid/view/View$OnClickListener;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->value:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->units:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;)Lcom/killermobile/totalrecall/s2/trial/MaxSize;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->size:Lcom/killermobile/totalrecall/s2/trial/MaxSize;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.killermobile.totalrecall.SIZE"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 72
    .local v0, s:J
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/MaxSize;

    invoke-direct {v2, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/MaxSize;-><init>(J)V

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->size:Lcom/killermobile/totalrecall/s2/trial/MaxSize;

    .line 74
    invoke-virtual {p0, v6}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->requestWindowFeature(I)Z

    .line 76
    const v2, 0x7f03002f

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->setContentView(I)V

    .line 78
    const v2, 0x7f0a0114

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-static {v2, v3, v6}, Lorg/appforce/ui/ThemedViews;->changeViewGroupTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;Z)V

    .line 80
    const v2, 0x7f0a0119

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->ok:Landroid/widget/Button;

    .line 81
    const v2, 0x7f0a011a

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->cancel:Landroid/widget/Button;

    .line 82
    const v2, 0x7f0a0116

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->units:Landroid/widget/RadioGroup;

    .line 83
    const v2, 0x7f0a0115

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->value:Landroid/widget/EditText;

    .line 85
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->ok:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->cancel:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->setResult(I)V

    .line 90
    return-void
.end method
