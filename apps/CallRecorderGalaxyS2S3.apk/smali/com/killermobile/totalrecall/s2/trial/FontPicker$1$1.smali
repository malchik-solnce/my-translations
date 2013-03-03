.class Lcom/killermobile/totalrecall/s2/trial/FontPicker$1$1;
.super Ljava/lang/Object;
.source "FontPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$1$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/FontPicker$1$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/FontPicker;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;->access$0(Lcom/killermobile/totalrecall/s2/trial/FontPicker$1;)Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    move-result-object v0

    const/4 v1, 0x0

    #calls: Lcom/killermobile/totalrecall/s2/trial/FontPicker;->loadFonts(Z)V
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/FontPicker;->access$0(Lcom/killermobile/totalrecall/s2/trial/FontPicker;Z)V

    .line 63
    return-void
.end method
