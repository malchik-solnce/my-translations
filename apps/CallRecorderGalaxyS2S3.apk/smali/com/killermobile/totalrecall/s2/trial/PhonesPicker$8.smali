.class Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$8;
.super Ljava/lang/Object;
.source "PhonesPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->dismissDialog(I)V

    .line 200
    return-void
.end method
