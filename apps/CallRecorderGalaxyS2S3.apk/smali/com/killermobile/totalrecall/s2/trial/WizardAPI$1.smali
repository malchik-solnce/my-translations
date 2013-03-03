.class Lcom/killermobile/totalrecall/s2/trial/WizardAPI$1;
.super Ljava/lang/Object;
.source "WizardAPI.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/WizardAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final certificates:[Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WizardAPI$1;->certificates:[Ljava/security/cert/X509Certificate;

    .line 1
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 197
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 194
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WizardAPI$1;->certificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
