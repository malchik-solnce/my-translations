.class Lcom/killermobile/totalrecall/s2/trial/FileView$1;
.super Ljava/lang/Object;
.source "FileView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/FileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/FileView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/FileView$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/FileView;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v0, 0x0

    .line 277
    if-nez p1, :cond_2

    .line 278
    if-nez p2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 281
    :cond_2
    if-nez p2, :cond_3

    .line 282
    if-eqz p1, :cond_0

    .line 283
    const/4 v0, 0x1

    goto :goto_0

    .line 285
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/killermobile/totalrecall/s2/trial/FileView$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
