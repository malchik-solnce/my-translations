.class public Lcom/killermobile/totalrecall/s2/trial/StopRecording;
.super Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;
.source "StopRecording.java"


# instance fields
.field private stopRecButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/StopRecording;->setContentView(I)V

    .line 25
    const v0, 0x7f0a011d

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/StopRecording;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/StopRecording;->stopRecButton:Landroid/widget/ImageButton;

    .line 27
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/StopRecording;->stopRecButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/StopRecording$1;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/StopRecording$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/StopRecording;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method protected updateUI()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
