.class public Lcom/killermobile/totalrecall/s2/trial/RequirePassword;
.super Lorg/appforce/ui/ThemedActivity;
.source "RequirePassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_PASSWORD:Ljava/lang/String; = "com.killermobile.blackballer.PASSWORD"


# instance fields
.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonPositive:Landroid/widget/Button;

.field private mEditPassword:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/appforce/ui/ThemedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 46
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->mEditPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, passwordEntered:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    sget-object v5, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->KEY_PASSWORD:Ljava/lang/String;

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, passwordPersisted:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    const-string v4, "Wrong password"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v2           #passwordEntered:Ljava/lang/String;
    .end local v3           #passwordPersisted:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 54
    .local v1, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 57
    .end local v1           #e:Ljava/security/GeneralSecurityException;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 59
    .local v0, data:Landroid/content/Intent;
    :try_start_1
    const-string v4, "com.killermobile.blackballer.PASSWORD"

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->mEditPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :goto_1
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->finish()V

    goto :goto_0

    .line 61
    :catch_1
    move-exception v1

    .line 62
    .restart local v1       #e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_1

    .line 67
    .end local v0           #data:Landroid/content/Intent;
    .end local v1           #e:Ljava/security/GeneralSecurityException;
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->setResult(I)V

    .line 68
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->finish()V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x7f0a003e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lorg/appforce/ui/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->setContentView(I)V

    .line 32
    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->mEditPassword:Landroid/widget/EditText;

    .line 33
    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->mButtonPositive:Landroid/widget/Button;

    .line 34
    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->mButtonNegative:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RequirePassword;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
