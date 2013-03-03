.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->dismissDialog(I)V

    .line 284
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 285
    return-void
.end method
