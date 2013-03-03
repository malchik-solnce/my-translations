.class Lcom/killermobilecrjb/patcher/S3JBFixScreen$4;
.super Landroid/content/BroadcastReceiver;
.source "S3JBFixScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobilecrjb/patcher/S3JBFixScreen;->batteryLevel()V
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
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$4;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    .line 824
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 826
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 827
    const-string v3, "level"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 828
    .local v1, rawlevel:I
    const-string v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 829
    .local v2, scale:I
    const/4 v0, -0x1

    .line 830
    .local v0, level:I
    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    .line 831
    mul-int/lit8 v3, v1, 0x64

    div-int v0, v3, v2

    .line 834
    :cond_0
    iget-object v3, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$4;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iput v0, v3, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->batteryLevel:I

    .line 835
    iget-object v3, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$4;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->gotBatteryInfo:Z

    .line 836
    return-void
.end method
