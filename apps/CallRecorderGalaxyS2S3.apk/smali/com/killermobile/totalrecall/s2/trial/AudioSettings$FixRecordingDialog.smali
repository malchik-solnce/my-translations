.class Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;
.super Landroid/app/Dialog;
.source "AudioSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/AudioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixRecordingDialog"
.end annotation


# static fields
.field private static final btnMicFix:Ljava/lang/String; = "Change recording strategy"

.field private static final btnRootFix:Ljava/lang/String; = "Fix drivers (requires ROOT!)"

.field private static final txtRootMic:Ljava/lang/String; = "If your device is rooted, select the first option. Otherwise, select the second option and find the strategy that yields best results on your device."


# instance fields
.field private m_btnCancel:Landroid/widget/Button;

.field private m_btnOption:[Landroid/widget/Button;

.field private m_txtDescription:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;


# direct methods
.method public constructor <init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    .line 519
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 520
    return-void
.end method

.method private micFix()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v1, 0x0

    #calls: Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->setDictaphoneEnabled(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;Z)V
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->access$7(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;Z)V

    .line 595
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->recordingStrategy:Landroid/widget/Button;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->access$8(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 596
    return-void
.end method

.method private onOptionClicked(I)V
    .locals 2
    .parameter "option"

    .prologue
    .line 571
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, pkg:Ljava/lang/String;
    const-string v1, "com.killermobile.totalrecall.s2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    const-string v1, "com.killermobile.totalrecall.note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 587
    :cond_1
    :goto_0
    return-void

    .line 577
    :pswitch_0
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->rootFix()V

    .line 578
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->dismiss()V

    goto :goto_0

    .line 581
    :pswitch_1
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->micFix()V

    .line 582
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->dismiss()V

    goto :goto_0

    .line 575
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private rootFix()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    #calls: Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->showFixRecordingUI()V
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->access$6(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V

    .line 591
    return-void
.end method

.method private setup()V
    .locals 3

    .prologue
    .line 559
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, pkg:Ljava/lang/String;
    const-string v1, "com.killermobile.totalrecall.s2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    const-string v1, "com.killermobile.totalrecall.note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->m_txtDescription:Landroid/widget/TextView;

    const-string v2, "Если устройство с Root, выберите первый вариант. В противном случае, выберите второй вариант и найдите настройки, которые дадут лучшие результаты на вашем устройстве."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->m_btnOption:[Landroid/widget/Button;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "Испр. драйверов (требуется ROOT)"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->m_btnOption:[Landroid/widget/Button;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "Изменение стратегии записи"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 568
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 545
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->m_btnOption:[Landroid/widget/Button;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 551
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 556
    :goto_1
    return-void

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->m_btnOption:[Landroid/widget/Button;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 547
    invoke-direct {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->onOptionClicked(I)V

    goto :goto_1

    .line 545
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :pswitch_0
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->dismiss()V

    goto :goto_1

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00bf
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 524
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 526
    const v1, 0x7f030019

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->setContentView(I)V

    .line 528
    const v1, 0x7f0a00bc

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->m_txtDescription:Landroid/widget/TextView;

    .line 529
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->m_btnOption:[Landroid/widget/Button;

    .line 530
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->m_btnOption:[Landroid/widget/Button;

    const v1, 0x7f0a00bd

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v3, v2

    .line 531
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->m_btnOption:[Landroid/widget/Button;

    const/4 v4, 0x1

    const v1, 0x7f0a00be

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v3, v4

    .line 532
    const v1, 0x7f0a00bf

    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->m_btnCancel:Landroid/widget/Button;

    .line 534
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->m_btnOption:[Landroid/widget/Button;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    .line 537
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->m_btnCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$FixRecordingDialog;->setup()V

    .line 541
    return-void

    .line 534
    :cond_0
    aget-object v0, v3, v1

    .line 535
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
