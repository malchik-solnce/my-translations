.class Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$6;
.super Ljava/lang/Object;
.source "PhonesPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->access$3(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;Ljava/util/ArrayList;)V

    .line 124
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->access$2(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->access$4(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->dataChanged(Ljava/util/ArrayList;)V

    .line 125
    return-void
.end method
