.class Lcom/killermobile/totalrecall/s2/trial/PasswordPreference$1;
.super Ljava/lang/Object;
.source "PasswordPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->passField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->access$0(Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->persistString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->access$1(Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;Ljava/lang/String;)Z

    .line 50
    return-void
.end method
