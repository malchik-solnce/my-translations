.class public Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;
.super Ljava/lang/Thread;
.source "S3JBFixScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/S3JBFixScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Countdown"
.end annotation


# instance fields
.field public count:I

.field final synthetic this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;


# direct methods
.method public constructor <init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;I)V
    .locals 0
    .parameter
    .parameter "start"

    .prologue
    .line 661
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 662
    iput p2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;->count:I

    .line 663
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 667
    :goto_0
    iget v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;->count:I

    if-gtz v0, :cond_0

    .line 671
    return-void

    .line 668
    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 669
    iget v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;->count:I

    goto :goto_0
.end method
