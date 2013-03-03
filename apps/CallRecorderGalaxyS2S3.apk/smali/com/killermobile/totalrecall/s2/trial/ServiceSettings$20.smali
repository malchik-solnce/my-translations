.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$20;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$20;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$20;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->exportSettings(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)Z

    .line 706
    return-void
.end method
