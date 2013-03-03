.class Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;
.super Lcom/killermobilecrjb/patcher/AsyncTask;
.source "S3JBFixScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/S3JBFixScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WasPatched"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/killermobilecrjb/patcher/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;


# direct methods
.method private constructor <init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    invoke-direct {p0}, Lcom/killermobilecrjb/patcher/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)V

    return-void
.end method

.method static synthetic access$2(Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;)Lcom/killermobilecrjb/patcher/S3JBFixScreen;
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    new-instance v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched$1;

    invoke-direct {v1, p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched$1;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen$WasPatched;)V

    invoke-virtual {v0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    :goto_0
    sget-boolean v0, Lcom/killermobilecrjb/patcher/Patcher;->ACK_DIALOG:Z

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lcom/killermobilecrjb/patcher/Patcher;->ACK_DIALOG:Z

    .line 213
    const-string v0, "Already patched, exiting."

    invoke-static {v0}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
