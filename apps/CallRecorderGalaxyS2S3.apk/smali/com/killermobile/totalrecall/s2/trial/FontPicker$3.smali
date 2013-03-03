.class Lcom/killermobile/totalrecall/s2/trial/FontPicker$3;
.super Ljava/lang/Object;
.source "FontPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/FontPicker;->loadFonts(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;

.field private final synthetic val$font:Lorg/appforce/ui/Font;

.field private final synthetic val$tf:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/FontPicker;Lorg/appforce/ui/Font;Landroid/graphics/Typeface;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$3;->val$font:Lorg/appforce/ui/Font;

    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$3;->val$tf:Landroid/graphics/Typeface;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$3;->val$font:Lorg/appforce/ui/Font;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/FontPicker;->currentPick:Lorg/appforce/ui/Font;
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->access$2(Lcom/killermobile/totalrecall/s2/trial/FontPicker;Lorg/appforce/ui/Font;)V

    .line 91
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FontPicker;->picked:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->access$3(Lcom/killermobile/totalrecall/s2/trial/FontPicker;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$3;->val$font:Lorg/appforce/ui/Font;

    invoke-virtual {v1}, Lorg/appforce/ui/Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FontPicker;->picked:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->access$3(Lcom/killermobile/totalrecall/s2/trial/FontPicker;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$3;->val$tf:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    return-void
.end method
