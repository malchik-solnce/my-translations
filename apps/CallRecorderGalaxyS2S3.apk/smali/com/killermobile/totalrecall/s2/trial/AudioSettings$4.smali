.class Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;
.super Ljava/lang/Object;
.source "AudioSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;)Lcom/killermobile/totalrecall/s2/trial/AudioSettings;
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 215
    new-instance v0, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    invoke-direct {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "Хотели бы Вы пройти через автоматические тесты или выбрать вручные настройки ?"

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 216
    const-string v1, "Автотесты"

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4$1;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;)V

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 223
    const-string v1, "Вручную"

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4$2;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings$4;)V

    invoke-virtual {v0, v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 233
    return-void
.end method
