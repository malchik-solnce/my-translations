.class Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$5;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 106
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->access$2(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v1

    .line 109
    .local v1, resItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/Utils;->contactItemsToJson(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordingNumbersJson(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->finish()V

    .line 114
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
