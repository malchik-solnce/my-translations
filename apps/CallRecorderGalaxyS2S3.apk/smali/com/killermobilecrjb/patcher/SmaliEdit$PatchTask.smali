.class Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;
.super Ljava/lang/Object;
.source "SmaliEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/SmaliEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatchTask"
.end annotation


# instance fields
.field private mData:Ljava/lang/String;

.field private mFindDir:Ljava/lang/String;

.field private mFunction:Ljava/lang/String;

.field private mJob:Ljava/lang/String;

.field private mParameter:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/killermobilecrjb/patcher/SmaliEdit;


# direct methods
.method public constructor <init>(Lcom/killermobilecrjb/patcher/SmaliEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "job"
    .parameter "data"
    .parameter "parameter"
    .parameter "target"
    .parameter "function"
    .parameter "findDir"
    .parameter "version"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->this$0:Lcom/killermobilecrjb/patcher/SmaliEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mJob:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mData:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mTarget:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mParameter:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mFunction:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mFindDir:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mVersion:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mFindDir:Ljava/lang/String;

    return-object v0
.end method

.method public getFunction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getJob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mJob:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mParameter:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->mVersion:Ljava/lang/String;

    return-object v0
.end method
