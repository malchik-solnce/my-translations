.class Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;
.super Ljava/lang/Object;
.source "ThemePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->setupBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

.field private final synthetic val$c:Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;->val$c:Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f0a00a5

    .line 217
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->pickedText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$4(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;->val$c:Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 218
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->themeUtils:Lorg/appforce/ui/ThemedViews$ThemeUtils;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$3(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Lorg/appforce/ui/ThemedViews$ThemeUtils;

    move-result-object v4

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->pickedText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$4(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0a00a4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->pickedText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$4(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;

    invoke-virtual {v4, v2, v3}, Lorg/appforce/ui/ThemedViews$ThemeUtils;->getPickedText(Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;Lorg/appforce/ui/ThemedViews$ThemeUtils$Color;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, txt:Ljava/lang/String;
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->pickedText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$4(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    invoke-static {v1}, Lorg/appforce/ui/ThemedViews;->getFromThemeName(Ljava/lang/String;)Lorg/appforce/ui/ThemedViews$Theme;

    move-result-object v0

    .line 221
    .local v0, theme:Lorg/appforce/ui/ThemedViews$Theme;
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #calls: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->setupForeground()V
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$9(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)V

    .line 222
    if-eqz v0, :cond_0

    .line 223
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->previewButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$6(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->preview:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$7(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lorg/appforce/ui/ThemedViews;->changeViewGroupTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;Z)V

    .line 226
    :cond_0
    return-void
.end method
