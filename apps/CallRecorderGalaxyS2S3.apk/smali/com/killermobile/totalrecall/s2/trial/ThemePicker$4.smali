.class Lcom/killermobile/totalrecall/s2/trial/ThemePicker$4;
.super Ljava/lang/Object;
.source "ThemePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 105
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->previewButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$6(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/appforce/ui/ThemedViews;->getFromThemeName(Ljava/lang/String;)Lorg/appforce/ui/ThemedViews$Theme;

    move-result-object v3

    .line 108
    .local v3, picked:Lorg/appforce/ui/ThemedViews$Theme;
    if-eqz v3, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-virtual {v3}, Lorg/appforce/ui/ThemedViews$Theme;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setTheme(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentFont:Lorg/appforce/ui/Font;
    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$2(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)Lorg/appforce/ui/Font;

    move-result-object v5

    invoke-static {v5}, Lorg/appforce/ui/Font;->getJsonFromFont(Lorg/appforce/ui/Font;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setFont(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 125
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->currentVibrationDuration:I
    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->access$8(Lcom/killermobile/totalrecall/s2/trial/ThemePicker;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setVibrationDuration(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 130
    :goto_2
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ThemePicker$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/ThemePicker;

    invoke-virtual {v4}, Lcom/killermobile/totalrecall/s2/trial/ThemePicker;->finish()V

    .line 131
    return-void

    .line 109
    :catch_0
    move-exception v2

    .line 111
    .local v2, e2:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v2           #e2:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 118
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 119
    .end local v1           #e1:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 121
    .local v1, e1:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v1           #e1:Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 127
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method
