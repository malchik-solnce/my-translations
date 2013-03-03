.class public Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;
.super Landroid/app/Activity;
.source "PromptForSaveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CALLTYPE:Ljava/lang/String; = "com.killermobile.totalrecall.Boza.CALLTYPE"

.field public static final FILENAME:Ljava/lang/String; = "com.killermobile.totalrecall.Boza.FILENAME"


# instance fields
.field private fileNameInput:Landroid/widget/EditText;

.field private inCallType:I

.field private inFileName:Ljava/lang/String;

.field private saved:Z

.field private service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;)Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->inCallType:I

    return v0
.end method

.method private discard()V
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getService()Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v1

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    .line 86
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    if-nez v1, :cond_0

    .line 87
    iget-boolean v1, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->saved:Z

    if-eqz v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->saveFile(Ljava/lang/String;I)V

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->saved:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->finish()V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private displayProgress(Ljava/lang/String;)V
    .locals 6
    .parameter "newFileName"

    .prologue
    .line 99
    const-string v4, "Сохранение файла"

    const-string v5, "Сохранение файла..."

    invoke-static {p0, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 100
    .local v2, pd:Landroid/app/ProgressDialog;
    move-object v0, p0

    .line 101
    .local v0, context:Landroid/app/Activity;
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$1;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;Landroid/app/ProgressDialog;Ljava/lang/String;Landroid/app/Activity;)V

    .line 111
    .local v1, handler:Landroid/os/Handler;
    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;Ljava/lang/String;Landroid/os/Handler;)V

    .line 121
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 122
    return-void
.end method

.method private save()V
    .locals 5

    .prologue
    .line 64
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getService()Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v2

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    .line 65
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    if-nez v2, :cond_0

    .line 82
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->inFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->inFileName:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 69
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->inFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 68
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, previousExtenstion:Ljava/lang/String;
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->fileNameInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, newFileName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_1
    invoke-direct {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->displayProgress(Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->saved:Z

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 128
    :pswitch_0
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->save()V

    goto :goto_0

    .line 132
    :pswitch_1
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->discard()V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x7f0a010e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, v4}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->requestWindowFeature(I)Z

    .line 42
    const v2, 0x7f03002c

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->setContentView(I)V

    .line 44
    const v2, 0x7f0a010b

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-static {v2, v3, v4}, Lorg/appforce/ui/ThemedViews;->changeViewGroupTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;Z)V

    .line 46
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.killermobile.totalrecall.Boza.FILENAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->inFileName:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.killermobile.totalrecall.Boza.CALLTYPE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->inCallType:I

    .line 48
    const v2, 0x7f0a010c

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    .local v1, tv:Landroid/widget/TextView;
    const-string v2, "Введите имя файла"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v2, 0x7f0a010d

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->fileNameInput:Landroid/widget/EditText;

    .line 51
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->fileNameInput:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->inFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const-string v2, "123456"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->inFileName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->fileNameInput:Landroid/widget/EditText;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->inFileName:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setSelection(II)V

    .line 54
    const v2, 0x7f0a010e

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    .local v0, btn:Landroid/widget/Button;
    const v2, 0x104000a

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 56
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v2, 0x7f0a010f

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 58
    .restart local v0       #btn:Landroid/widget/Button;
    const-string v2, "Отменить"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getService()Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v2

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 141
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->saved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->save()V

    .line 142
    :cond_0
    return-void
.end method
