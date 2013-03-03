.class public Lcom/killermobile/totalrecall/s2/trial/FontPicker;
.super Lorg/appforce/ui/ThemedActivity;
.source "FontPicker.java"


# static fields
.field public static final EXTRA_PICKED_FONT:Ljava/lang/String; = "EXTRA_PICKED_FONT"


# instance fields
.field private currentPick:Lorg/appforce/ui/Font;

.field private evenMore:Landroid/widget/Button;

.field private fonts:Landroid/view/ViewGroup;

.field private picked:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/appforce/ui/ThemedActivity;-><init>()V

    .line 31
    sget-object v0, Lorg/appforce/ui/Font;->DEFAULT:Lorg/appforce/ui/Font;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->currentPick:Lorg/appforce/ui/Font;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/FontPicker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->loadFonts(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/FontPicker;)Lorg/appforce/ui/Font;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->currentPick:Lorg/appforce/ui/Font;

    return-object v0
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/FontPicker;Lorg/appforce/ui/Font;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->currentPick:Lorg/appforce/ui/Font;

    return-void
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/FontPicker;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->picked:Landroid/widget/TextView;

    return-object v0
.end method

.method private loadFonts(Z)V
    .locals 9
    .parameter "assets"

    .prologue
    .line 80
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->fonts:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 82
    if-eqz p1, :cond_0

    invoke-static {}, Lorg/appforce/ui/Font;->getAssetsFonts()Ljava/util/ArrayList;

    move-result-object v2

    .line 84
    .local v2, fontNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appforce/ui/Font;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 98
    return-void

    .line 82
    .end local v2           #fontNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appforce/ui/Font;>;"
    :cond_0
    invoke-static {}, Lorg/appforce/ui/Font;->getSDCardFonts()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 84
    .restart local v2       #fontNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appforce/ui/Font;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appforce/ui/Font;

    .line 85
    .local v1, font:Lorg/appforce/ui/Font;
    invoke-virtual {v1}, Lorg/appforce/ui/Font;->get()Landroid/graphics/Typeface;

    move-result-object v3

    .line 86
    .local v3, tf:Landroid/graphics/Typeface;
    new-instance v0, Lorg/appforce/ui/VibratingButton;

    invoke-direct {v0, p0}, Lorg/appforce/ui/VibratingButton;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v1}, Lorg/appforce/ui/Font;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/FontPicker$3;

    invoke-direct {v5, p0, v1, v3}, Lcom/killermobile/totalrecall/s2/trial/FontPicker$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/FontPicker;Lorg/appforce/ui/Font;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget-object v5, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-static {v0, v5, v3}, Lorg/appforce/ui/ThemedViews;->changeViewTheme(Landroid/view/View;Lorg/appforce/ui/ThemedViews$Theme;Landroid/graphics/Typeface;)V

    .line 96
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->fonts:Landroid/view/ViewGroup;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lorg/appforce/ui/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->setContentView(I)V

    .line 48
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->fonts:Landroid/view/ViewGroup;

    .line 50
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->picked:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->evenMore:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->evenMore:Landroid/widget/Button;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/FontPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/FontPicker$2;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/FontPicker$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/FontPicker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lorg/appforce/ui/ThemedActivity;->onResume()V

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->loadFonts(Z)V

    .line 40
    return-void
.end method
