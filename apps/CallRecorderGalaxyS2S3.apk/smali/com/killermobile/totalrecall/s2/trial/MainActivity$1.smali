.class Lcom/killermobile/totalrecall/s2/trial/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

.field private final synthetic val$tabHost:Landroid/widget/TabHost;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/MainActivity;Landroid/widget/TabHost;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/MainActivity;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$1;->val$tabHost:Landroid/widget/TabHost;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "tabId"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$1;->val$tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/appforce/ui/ThemedViews;->changeViewGroupTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;Z)V

    .line 110
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MainActivity$1;->val$tabHost:Landroid/widget/TabHost;

    sget-object v1, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-static {v0, v1}, Lorg/appforce/ui/ThemedViews;->changeThemedTabs(Landroid/widget/TabHost;Lorg/appforce/ui/ThemedViews$Theme;)V

    .line 112
    return-void
.end method
