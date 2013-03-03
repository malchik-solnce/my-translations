.class public Lcom/killermobilecrjb/patcher/S3JBFixScreen;
.super Landroid/app/Activity;
.source "S3JBFixScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;,
        Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;,
        Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;,
        Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;
    }
.end annotation


# instance fields
.field batteryLevel:I

.field deodexCheck:Landroid/widget/CheckBox;

.field errorText:Landroid/widget/TextView;

.field gotBatteryInfo:Z

.field installingCheck:Landroid/widget/CheckBox;

.field patcher:Lcom/killermobilecrjb/patcher/Patcher;

.field pctFile:Landroid/widget/TextView;

.field pctOverall:Landroid/widget/TextView;

.field processingText:Landroid/widget/TextView;

.field progressBar:Landroid/widget/ProgressBar;

.field progressText:Landroid/widget/TextView;

.field ramFree:Landroid/widget/TextView;

.field restartButton:Landroid/widget/Button;

.field restartPhone:Landroid/view/View$OnClickListener;

.field restartText:Landroid/widget/TextView;

.field rootCheck:Landroid/widget/CheckBox;

.field setupCheck:Landroid/widget/CheckBox;

.field shellProgressBar:Landroid/widget/ProgressBar;

.field spinner:Landroid/widget/ProgressBar;

.field public success:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->gotBatteryInfo:Z

    .line 54
    iput v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->batteryLevel:I

    .line 74
    iput v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->success:I

    .line 761
    new-instance v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;

    invoke-direct {v0, p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)V

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->restartPhone:Landroid/view/View$OnClickListener;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/killermobilecrjb/patcher/S3JBFixScreen;Ljava/lang/String;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 848
    invoke-direct {p0, p1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->memSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->fadeIn()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private batteryLevel()V
    .locals 3

    .prologue
    .line 824
    new-instance v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen$4;

    invoke-direct {v1, p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$4;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)V

    .line 838
    .local v1, batteryLevelReceiver:Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 839
    .local v0, batteryLevelFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v1, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 840
    return-void
.end method

.method private fadeIn()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 816
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 817
    .local v0, fadeIn:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 818
    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 820
    return-object v0
.end method

.method private initElements()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 780
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->rootCheck:Landroid/widget/CheckBox;

    .line 781
    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->deodexCheck:Landroid/widget/CheckBox;

    .line 782
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->installingCheck:Landroid/widget/CheckBox;

    .line 783
    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setupCheck:Landroid/widget/CheckBox;

    .line 784
    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    .line 785
    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->errorText:Landroid/widget/TextView;

    .line 786
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressBar:Landroid/widget/ProgressBar;

    .line 787
    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->spinner:Landroid/widget/ProgressBar;

    .line 788
    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->restartButton:Landroid/widget/Button;

    .line 789
    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->restartText:Landroid/widget/TextView;

    .line 790
    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->processingText:Landroid/widget/TextView;

    .line 791
    const v0, 0x7f0a004b

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->shellProgressBar:Landroid/widget/ProgressBar;

    .line 792
    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->pctFile:Landroid/widget/TextView;

    .line 793
    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->pctOverall:Landroid/widget/TextView;

    .line 794
    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->ramFree:Landroid/widget/TextView;

    .line 796
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->ramFree:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->pctOverall:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->pctFile:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->shellProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->processingText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 803
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->rootCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->deodexCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->installingCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setupCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 807
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->restartButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->restartText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 813
    return-void
.end method

.method public static isACPower(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 843
    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 844
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "plugged"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 845
    .local v1, plugged:I
    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method private memSize(Ljava/lang/String;)J
    .locals 9
    .parameter "path"

    .prologue
    .line 849
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 850
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 851
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 865
    .local v0, availableBlocks:J
    mul-long v5, v0, v2

    const-wide/32 v7, 0x100000

    div-long/2addr v5, v7

    return-wide v5
.end method


# virtual methods
.method public doPatch()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    iput-boolean v3, v1, Lcom/killermobilecrjb/patcher/Patcher;->isPatching:Z

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 126
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->rootCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->rootCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->fadeIn()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    const-string v2, "Checking root capability ..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    sget-object v2, Lcom/killermobilecrjb/patcher/Patcher$Verification;->CHECK_ROOT:Lcom/killermobilecrjb/patcher/Patcher$Verification;

    invoke-virtual {v1, v2}, Lcom/killermobilecrjb/patcher/Patcher;->verifyInstall(Lcom/killermobilecrjb/patcher/Patcher$Verification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->rootCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setOverallPct(I)V

    .line 136
    iget v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->success:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->success:I

    .line 143
    :goto_0
    new-instance v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;

    invoke-direct {v1, p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)V

    .line 158
    const-wide/16 v2, 0xbb8

    .line 143
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    new-instance v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen$3;

    invoke-direct {v1, p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$3;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)V

    .line 173
    const-wide/16 v2, 0x1770

    .line 160
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->rootCheck:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 139
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->rootCheck:Landroid/widget/CheckBox;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->rootCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Failed)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->errorText:Landroid/widget/TextView;

    const-string v2, "Your device requires root permissions."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setContentView(I)V

    .line 85
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setRequestedOrientation(I)V

    .line 86
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 88
    invoke-direct {p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->initElements()V

    .line 90
    invoke-direct {p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->batteryLevel()V

    .line 92
    new-instance v1, Lcom/killermobilecrjb/patcher/Patcher;

    invoke-direct {v1, p0}, Lcom/killermobilecrjb/patcher/Patcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    .line 95
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    const-string v2, "-R 777"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/killermobilecrjb/patcher/Patcher;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Patcher;->beenPatched()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Patcher;->putResources()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const-string v1, "Error copying resources!"

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 103
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Patcher;->isUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    new-instance v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;)V

    .line 108
    .local v0, task:Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;->execute([Ljava/lang/Object;)Lcom/killermobilecrjb/patcher/AsyncTask;

    .line 117
    .end local v0           #task:Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v1, "Update found, patching for latest version!"

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->doPatch()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    iget-boolean v0, v0, Lcom/killermobilecrjb/patcher/Patcher;->isPatching:Z

    if-eqz v0, :cond_0

    .line 651
    const/4 v0, 0x0

    .line 654
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFilePct(I)V
    .locals 3
    .parameter "pct"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 627
    if-lez p1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->shellProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->pctFile:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    :goto_0
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->shellProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 636
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->pctFile:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->pctFile:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->shellProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOverallPct(I)V
    .locals 3
    .parameter "pct"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 613
    if-lez p1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->pctOverall:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 621
    :goto_0
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 622
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->pctOverall:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->pctOverall:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
