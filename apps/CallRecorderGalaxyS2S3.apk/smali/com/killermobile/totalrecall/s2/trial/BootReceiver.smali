.class public Lcom/killermobile/totalrecall/s2/trial/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final SEQUENCE_STRATEGY_DELAY:J = 0x2710L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static checkForSequenceStrategy(Landroid/content/Context;Z)Z
    .locals 6
    .parameter "context"
    .parameter "launch"

    .prologue
    .line 19
    const/4 v0, -0x1

    .line 20
    .local v0, firstStrategy:I
    const/4 v3, -0x1

    .line 22
    .local v3, secondStrategy:I
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, model:Ljava/lang/String;
    const/4 v2, 0x0

    .line 34
    .local v2, result:Z
    const-string v4, "galaxy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "note"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 35
    :cond_0
    const-string v4, "sgh-i717"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 36
    const-string v4, "gt-n7000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 37
    const-string v4, "gt-n7003"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 38
    const-string v4, "p6800"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 39
    const-string v4, "i9220"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 41
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-eq v4, v5, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_3

    .line 42
    :cond_2
    const/4 v2, 0x0

    .line 45
    :cond_3
    const/4 v0, 0x4

    .line 46
    const/4 v3, 0x2

    .line 47
    const/4 v2, 0x1

    .line 52
    :goto_0
    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 53
    const-wide/16 v4, 0x2710

    invoke-static {p0, v0, v3, v4, v5}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->launch(Landroid/content/Context;IIJ)V

    .line 56
    :cond_4
    return v2

    .line 49
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/BootReceiver;->checkForSequenceStrategy(Landroid/content/Context;Z)Z

    .line 16
    return-void
.end method
