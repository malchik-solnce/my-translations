.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$4;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;

.field private final synthetic val$smsSettingsChangePassBtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$4;->this$1:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$4;->val$smsSettingsChangePassBtn:Landroid/widget/Button;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$4;->val$smsSettingsChangePassBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 505
    return-void
.end method
