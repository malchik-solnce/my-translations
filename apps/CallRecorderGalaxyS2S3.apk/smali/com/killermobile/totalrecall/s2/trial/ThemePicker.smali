.class public Lcom/killermobile/totalrecall/s2/trial/ThemePicker;
.super Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;
.source "ThemePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_FONT:I = 0x1


# instance fields
.field private backgrounds:Landroid/widget/LinearLayout;

.field private changeFont:Landroid/widget/RadioGroup;

.field private checkVibration:Landroid/widget/CheckBox;

.field private currentFont:Lorg/appforce/ui/Font;

.field private currentVibrationDuration:I

.field private fontListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private foregrounds:Landroid/widget/GridView;

.field private moreFonts:Landroid/widget/Button;

.field private pickedText:Landroid/widget/TextView;

.field private preview:Landroid/widget/LinearLayout;

.field private previewButton:Landroid/widget/Button;

.field private themeUtils:Lorg/appforce/ui/ThemedViews$ThemeUtils;

.field private vibrationCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;-><init>()V

    .line 51
    invoke-static {}, Lorg/appforce/ui/ThemedViews;->getCurrentFont()Lorg/appforce/ui/Font;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;

    .line 52
    sget v0, Lorg/appforce/ui/UiUtils;->VIBRATION:I

    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentVibrationDuration:I

    .line 154
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->vibrationCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 180
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$2;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->fontListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentVibrationDuration:I

    return-void
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;Lorg/appforce/ui/Font;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;

    return-void
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Lorg/appforce/ui/Font;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;

    return-object v0
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Lorg/appforce/ui/ThemedViews$ThemeUtils;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->themeUtils:Lorg/appforce/ui/ThemedViews$ThemeUtils;

    return-object v0
.end method

.method static synthetic access$4(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->pickedText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->setupBackground()V

    return-void
.end method

.method static synthetic access$6(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->previewButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->preview:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentVibrationDuration:I

    return v0
.end method

.method static synthetic access$9(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->setupForeground()V

    return-void
.end method

.method private setupBackground()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 208
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->backgrounds:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 212
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->pickedText:Landroid/widget/TextView;

    const v3, 0x7f0a00a4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;

    invoke-static {v2}, Lorg/appforce/ui/ThemedViews$ThemeUtils;->getBackground(Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->backgrounds:Landroid/widget/LinearLayout;

    sget-object v3, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/appforce/ui/ThemedViews;->changeViewGroupTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;Z)V

    .line 233
    return-void

    .line 212
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;

    .line 213
    .local v1, c:Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;
    new-instance v0, Lorg/appforce/ui/VibratingButton;

    invoke-direct {v0, p0}, Lorg/appforce/ui/VibratingButton;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, b:Landroid/widget/Button;
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->themeUtils:Lorg/appforce/ui/ThemedViews$ThemeUtils;

    invoke-virtual {v3, v1}, Lorg/appforce/ui/ThemedViews$ThemeUtils;->getColorName(Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 215
    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;

    invoke-direct {v3, p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;-><init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->backgrounds:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setupForeground()V
    .locals 4

    .prologue
    .line 202
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->foregrounds:Landroid/widget/GridView;

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->pickedText:Landroid/widget/TextView;

    const v3, 0x7f0a00a5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;

    invoke-static {v0}, Lorg/appforce/ui/ThemedViews$ThemeUtils;->getForeground(Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;-><init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 143
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 145
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 151
    :goto_1
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->updateUI()V

    goto :goto_0

    .line 147
    :pswitch_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v0

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    const-string v2, "EXTRA_PICKED_FONT"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getTempStuff(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appforce/ui/Font;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;

    goto :goto_1

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceBundle"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->setContentView(I)V

    .line 69
    new-instance v0, Lorg/appforce/ui/ThemedViews$ThemeUtils;

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appforce/ui/ThemedViews$ThemeUtils;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->themeUtils:Lorg/appforce/ui/ThemedViews$ThemeUtils;

    .line 71
    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->pickedText:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0a00a4

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->foregrounds:Landroid/widget/GridView;

    .line 75
    const v0, 0x7f0a00a5

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->backgrounds:Landroid/widget/LinearLayout;

    .line 77
    const v0, 0x7f0a009d

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->previewButton:Landroid/widget/Button;

    .line 79
    const v0, 0x7f0a009c

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->preview:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f0a009e

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->changeFont:Landroid/widget/RadioGroup;

    .line 83
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->changeFont:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->fontListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 85
    const v0, 0x7f0a009a

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->moreFonts:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->moreFonts:Landroid/widget/Button;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$3;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0a0099

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->checkVibration:Landroid/widget/CheckBox;

    .line 97
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->checkVibration:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->vibrationCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->setupForeground()V

    .line 100
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->setupBackground()V

    .line 102
    const v0, 0x7f0a00a3

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$4;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0a00a2

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$5;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$5;-><init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onResume()V

    .line 61
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->updateUI()V

    .line 62
    return-void
.end method

.method protected updateUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;

    invoke-virtual {v2}, Lorg/appforce/ui/Font;->get()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/appforce/ui/ThemedViews;->setCurrentTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;Landroid/graphics/Typeface;)V

    .line 239
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->changeFont:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 241
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;

    sget-object v1, Lorg/appforce/ui/Font;->DEFAULT:Lorg/appforce/ui/Font;

    invoke-virtual {v0, v1}, Lorg/appforce/ui/Font;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->changeFont:Landroid/widget/RadioGroup;

    const v1, 0x7f0a009f

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->changeFont:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->fontListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 248
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->checkVibration:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getVibrationDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->checkVibration:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->checkVibration:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->vibrationCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 257
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;

    sget-object v1, Lorg/appforce/ui/Font;->MONOSPACE:Lorg/appforce/ui/Font;

    invoke-virtual {v0, v1}, Lorg/appforce/ui/Font;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->changeFont:Landroid/widget/RadioGroup;

    const v1, 0x7f0a00a0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;

    sget-object v1, Lorg/appforce/ui/Font;->SERIF:Lorg/appforce/ui/Font;

    invoke-virtual {v0, v1}, Lorg/appforce/ui/Font;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->changeFont:Landroid/widget/RadioGroup;

    const v1, 0x7f0a00a1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->changeFont:Landroid/widget/RadioGroup;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    goto :goto_1
.end method
