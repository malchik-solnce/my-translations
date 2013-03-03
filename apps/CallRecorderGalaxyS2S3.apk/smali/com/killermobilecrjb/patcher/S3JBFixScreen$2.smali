.class Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;
.super Ljava/lang/Object;
.source "S3JBFixScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobilecrjb/patcher/S3JBFixScreen;->doPatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;


# direct methods
.method constructor <init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->deodexCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->deodexCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    #calls: Lcom/killermobilecrjb/patcher/S3JBFixScreen;->fadeIn()Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->access$1(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    const-string v1, "Checking files ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setOverallPct(I)V

    .line 149
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    sget-object v1, Lcom/killermobilecrjb/patcher/Patcher$Verification;->CHECK_ODEX:Lcom/killermobilecrjb/patcher/Patcher$Verification;

    invoke-virtual {v0, v1}, Lcom/killermobilecrjb/patcher/Patcher;->verifyInstall(Lcom/killermobilecrjb/patcher/Patcher$Verification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->deodexCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget v1, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->success:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->success:I

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->deodexCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 154
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->deodexCheck:Landroid/widget/CheckBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v2, v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->deodexCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Failed)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->errorText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$2;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v2, v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->errorText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nCannot find file SecPhone.apk in /system/app/."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
