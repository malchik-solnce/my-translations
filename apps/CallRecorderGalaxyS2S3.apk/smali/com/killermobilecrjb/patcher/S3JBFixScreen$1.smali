.class Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;
.super Ljava/lang/Object;
.source "S3JBFixScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/S3JBFixScreen;
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
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;)Lcom/killermobilecrjb/patcher/S3JBFixScreen;
    .locals 1
    .parameter

    .prologue
    .line 761
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 764
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 766
    new-instance v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$1$1;

    invoke-direct {v0, p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$1$1;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen$1;)V

    .line 773
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 775
    return-void
.end method
