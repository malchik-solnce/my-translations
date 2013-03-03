.class Lcom/killermobile/totalrecall/s2/trial/ThemePicker$2;
.super Ljava/lang/Object;
.source "ThemePicker.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/ThemePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 184
    packed-switch p2, :pswitch_data_0

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    const v1, 0x7f0a0097

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$2(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Lorg/appforce/ui/Font;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appforce/ui/Font;->get()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appforce/ui/ThemedViews;->changeViewGroupTheme(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V

    .line 197
    return-void

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    sget-object v1, Lorg/appforce/ui/Font;->DEFAULT:Lorg/appforce/ui/Font;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$1(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;Lorg/appforce/ui/Font;)V

    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    sget-object v1, Lorg/appforce/ui/Font;->MONOSPACE:Lorg/appforce/ui/Font;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$1(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;Lorg/appforce/ui/Font;)V

    goto :goto_0

    .line 192
    :pswitch_2
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    sget-object v1, Lorg/appforce/ui/Font;->SERIF:Lorg/appforce/ui/Font;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$1(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;Lorg/appforce/ui/Font;)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x7f0a009f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
