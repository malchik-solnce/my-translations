.class public Lcom/killermobile/totalrecall/s2/trial/SplashScreen;
.super Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;
.source "SplashScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method protected updateUI()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 38
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 39
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v7, "accepted_imei_agreement"

    invoke-interface {v3, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eq v7, v7, :cond_0

    .line 41
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 42
    .local v4, sv:Landroid/widget/ScrollView;
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    .local v5, tv:Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    const v8, 0x7f060021

    invoke-virtual {p0, v8}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f060035

    invoke-virtual {p0, v8}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 45
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/16 v9, 0xfa

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v7, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    invoke-direct {v7, p0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setView(Landroid/view/View;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v7

    .line 48
    const v8, 0x7f060036

    new-instance v9, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$1;

    invoke-direct {v9, p0, v3}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/SplashScreen;Landroid/content/SharedPreferences;)V

    invoke-virtual {v7, v8, v9}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v7

    .line 56
    const v8, 0x7f060037

    new-instance v9, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$2;

    invoke-direct {v9, p0}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/SplashScreen;)V

    invoke-virtual {v7, v8, v9}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v7

    .line 62
    invoke-virtual {v7, v11}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setCancel(Z)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 66
    .end local v4           #sv:Landroid/widget/ScrollView;
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v7}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isAcceptedEula()Z

    move-result v7

    if-nez v7, :cond_1

    .line 67
    const v7, 0x7f030024

    invoke-virtual {p0, v7}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->setContentView(I)V

    .line 68
    const v7, 0x7f0a00e8

    invoke-virtual {p0, v7}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    .line 69
    .local v6, wv:Landroid/webkit/WebView;
    const-string v7, "file:///android_asset/EULA.html"

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 71
    const v7, 0x7f0a00e6

    invoke-virtual {p0, v7}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 72
    .local v2, eulaYes:Landroid/widget/Button;
    const v7, 0x7f0a00e7

    invoke-virtual {p0, v7}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 74
    .local v1, eulaNo:Landroid/widget/Button;
    new-instance v7, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$3;

    invoke-direct {v7, p0}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/SplashScreen;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v7, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$4;

    invoke-direct {v7, p0}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/SplashScreen;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .end local v1           #eulaNo:Landroid/widget/Button;
    .end local v2           #eulaYes:Landroid/widget/Button;
    .end local v6           #wv:Landroid/webkit/WebView;
    :goto_0
    return-void

    .line 99
    :cond_1
    const v7, 0x7f030030

    invoke-virtual {p0, v7}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->setContentView(I)V

    .line 101
    const v7, 0x7f0a011b

    invoke-virtual {p0, v7}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$5;

    invoke-direct {v8, p0}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$5;-><init>(Lcom/killermobile/totalrecall/s2/trial/SplashScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v7, 0x7f0a011c

    invoke-virtual {p0, v7}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$6;

    invoke-direct {v8, p0}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$6;-><init>(Lcom/killermobile/totalrecall/s2/trial/SplashScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget-boolean v7, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->SPLASH_OPENED:Z

    if-eqz v7, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->finish()V

    .line 121
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    const v7, 0x7f060029

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 139
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen;->finish()V

    .line 140
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v7, 0x1

    :try_start_1
    sput-boolean v7, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->SPLASH_OPENED:Z

    .line 127
    new-instance v7, Ljava/util/Timer;

    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    new-instance v8, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$7;

    invoke-direct {v8, p0}, Lcom/killermobile/totalrecall/s2/trial/SplashScreen$7;-><init>(Lcom/killermobile/totalrecall/s2/trial/SplashScreen;)V

    .line 134
    const-wide/16 v9, 0x7d0

    .line 127
    invoke-virtual {v7, v8, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
