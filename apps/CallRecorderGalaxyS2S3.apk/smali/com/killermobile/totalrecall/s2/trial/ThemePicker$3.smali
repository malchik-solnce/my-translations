.class Lcom/killermobile/totalrecall/s2/trial/ThemePicker$3;
.super Ljava/lang/Object;
.source "ThemePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/FontPicker;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 92
    return-void
.end method
