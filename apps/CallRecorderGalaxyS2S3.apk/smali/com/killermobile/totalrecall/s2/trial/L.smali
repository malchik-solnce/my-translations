.class public final Lcom/killermobile/totalrecall/s2/trial/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TotalRecall"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 17
    const/4 v0, 0x6

    const-string v1, "TotalRecall"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 21
    const/4 v0, 0x4

    const-string v1, "TotalRecall"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 9
    const/4 v0, 0x3

    const-string v1, "TotalRecall"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 13
    const/4 v0, 0x5

    const-string v1, "TotalRecall"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method
