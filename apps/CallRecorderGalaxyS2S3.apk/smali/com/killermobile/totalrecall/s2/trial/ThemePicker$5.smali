.class Lcom/killermobile/totalrecall/s2/trial/ThemePicker$5;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->finish()V

    .line 137
    return-void
.end method
