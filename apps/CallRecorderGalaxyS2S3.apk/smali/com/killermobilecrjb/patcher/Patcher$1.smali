.class Lcom/killermobilecrjb/patcher/Patcher$1;
.super Ljava/lang/Object;
.source "Patcher.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobilecrjb/patcher/Patcher;->hasFiles(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobilecrjb/patcher/Patcher;

.field private final synthetic val$suffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/killermobilecrjb/patcher/Patcher;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/Patcher$1;->this$0:Lcom/killermobilecrjb/patcher/Patcher;

    iput-object p2, p0, Lcom/killermobilecrjb/patcher/Patcher$1;->val$suffix:Ljava/lang/String;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "directory"
    .parameter "fileName"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/Patcher$1;->val$suffix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
