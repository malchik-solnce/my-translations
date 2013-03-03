.class public abstract Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;
.super Lorg/appforce/ui/ThemedActivity;
.source "TotalRecallServiceActivity.java"


# instance fields
.field protected final application:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

.field protected service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

.field private final serviceListener:Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/appforce/ui/ThemedActivity;-><init>()V

    .line 11
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->application:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    .line 13
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->serviceListener:Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;

    .line 9
    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lorg/appforce/ui/ThemedActivity;->onPause()V

    .line 30
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->application:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->serviceListener:Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->removeServiceConnectedListener(Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;)V

    .line 31
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lorg/appforce/ui/ThemedActivity;->onResume()V

    .line 25
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->application:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->serviceListener:Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->addServiceConnectedListener(Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;)V

    .line 26
    return-void
.end method

.method protected abstract updateUI()V
.end method
