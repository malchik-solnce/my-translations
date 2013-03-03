.class public Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;
.super Landroid/app/Activity;
.source "DurationPickerDialog.java"


# static fields
.field public static final EXTRA_DURATION:Ljava/lang/String; = "com.killermobile.totalrecall.DURATION"


# instance fields
.field private cancel:Landroid/widget/Button;

.field private final clickListener:Landroid/view/View$OnClickListener;

.field private duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

.field private hMinus:Landroid/widget/Button;

.field private hPlus:Landroid/widget/Button;

.field private hrs:Landroid/widget/EditText;

.field private mMinus:Landroid/widget/Button;

.field private mPlus:Landroid/widget/Button;

.field private min:Landroid/widget/EditText;

.field private ok:Landroid/widget/Button;

.field private sMinus:Landroid/widget/Button;

.field private sPlus:Landroid/widget/Button;

.field private sec:Landroid/widget/EditText;

.field private final watcherHrs:Landroid/text/TextWatcher;

.field private final watcherMin:Landroid/text/TextWatcher;

.field private final watcherSec:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->clickListener:Landroid/view/View$OnClickListener;

    .line 76
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$2;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->watcherHrs:Landroid/text/TextWatcher;

    .line 94
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$3;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->watcherMin:Landroid/text/TextWatcher;

    .line 112
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$4;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->watcherSec:Landroid/text/TextWatcher;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    return-object v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->updateUI()V

    return-void
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->hrs:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->watcherHrs:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->min:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->watcherMin:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->sec:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->watcherSec:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->hrs:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getHours()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->min:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getMinutes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->sec:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getSeconds()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->hrs:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->watcherHrs:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->min:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->watcherMin:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->sec:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->watcherSec:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.killermobile.totalrecall.DURATION"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 134
    .local v0, dur:J
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    invoke-direct {v2, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;-><init>(J)V

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    .line 136
    invoke-virtual {p0, v6}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->requestWindowFeature(I)Z

    .line 138
    const v2, 0x7f030022

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->setContentView(I)V

    .line 140
    const v2, 0x7f0a00d8

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-static {v2, v3, v6}, Lorg/appforce/ui/ThemedViews;->changeViewGroupTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;Z)V

    .line 142
    const v2, 0x7f0a00d9

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->hPlus:Landroid/widget/Button;

    .line 143
    const v2, 0x7f0a00da

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->mPlus:Landroid/widget/Button;

    .line 144
    const v2, 0x7f0a00db

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->sPlus:Landroid/widget/Button;

    .line 145
    const v2, 0x7f0a00df

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->hMinus:Landroid/widget/Button;

    .line 146
    const v2, 0x7f0a00e0

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->mMinus:Landroid/widget/Button;

    .line 147
    const v2, 0x7f0a00e1

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->sMinus:Landroid/widget/Button;

    .line 148
    const v2, 0x7f0a00e2

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->ok:Landroid/widget/Button;

    .line 149
    const v2, 0x7f0a00e3

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->cancel:Landroid/widget/Button;

    .line 151
    const v2, 0x7f0a00dc

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->hrs:Landroid/widget/EditText;

    .line 152
    const v2, 0x7f0a00dd

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->min:Landroid/widget/EditText;

    .line 153
    const v2, 0x7f0a00de

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->sec:Landroid/widget/EditText;

    .line 155
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->hPlus:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->mPlus:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->sPlus:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->hMinus:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->mMinus:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->sMinus:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->ok:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->cancel:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->updateUI()V

    .line 165
    return-void
.end method
