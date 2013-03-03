.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$18;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$18;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$18;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->dismissDialog(I)V

    .line 668
    return-void
.end method
