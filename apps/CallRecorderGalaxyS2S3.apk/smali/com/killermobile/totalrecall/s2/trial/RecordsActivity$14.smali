.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$14;
.super Ljava/lang/Object;
.source "RecordsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$14;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$14;->val$path:Ljava/lang/String;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 538
    packed-switch p2, :pswitch_data_0

    .line 542
    :goto_0
    return-void

    .line 539
    :pswitch_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$14;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$14;->val$path:Ljava/lang/String;

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->sendEmail(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$11(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :pswitch_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$14;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$14;->val$path:Ljava/lang/String;

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->sendMMS(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$12(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
