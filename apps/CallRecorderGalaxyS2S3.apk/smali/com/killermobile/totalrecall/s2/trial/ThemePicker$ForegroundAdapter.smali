.class Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/ThemePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForegroundAdapter"
.end annotation


# instance fields
.field private final colors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;


# direct methods
.method public constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p2, colors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;>;"
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 262
    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;->colors:Ljava/util/ArrayList;

    .line 263
    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    .end local p2           #colors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .restart local p2       #colors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;>;"
    :cond_0
    return-void
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;)Lcom/killermobile/totalrecall/s2/trial/ThemePicker;
    .locals 1
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;->colors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;->getItem(I)Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;
    .locals 1
    .parameter "position"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;->colors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 274
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, b:Landroid/widget/Button;
    if-nez p2, :cond_0

    .line 279
    new-instance v0, Lorg/appforce/ui/VibratingButton;

    .end local v0           #b:Landroid/widget/Button;
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    invoke-direct {v0, v2}, Lorg/appforce/ui/VibratingButton;-><init>(Landroid/content/Context;)V

    .line 284
    .restart local v0       #b:Landroid/widget/Button;
    :goto_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;

    .line 285
    .local v1, c:Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->themeUtils:Lorg/appforce/ui/ThemedViews$ThemeUtils;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$3(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Lorg/appforce/ui/ThemedViews$ThemeUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/appforce/ui/ThemedViews$ThemeUtils;->getColorName(Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setMinLines(I)V

    .line 287
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    sget-object v2, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$ForegroundAdapter;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$2(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Lorg/appforce/ui/Font;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appforce/ui/Font;->get()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/appforce/ui/ThemedViews;->changeViewTheme(Landroid/view/View;Lorg/appforce/ui/ThemedViews$Theme;Landroid/graphics/Typeface;)V

    .line 301
    return-object v0

    .end local v1           #c:Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;
    :cond_0
    move-object v0, p2

    .line 282
    check-cast v0, Landroid/widget/Button;

    goto :goto_0
.end method
