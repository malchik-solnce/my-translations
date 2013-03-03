.class Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;
.super Ljava/lang/Object;
.source "BeforeDonut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/contacts/BeforeDonut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneTypes"
.end annotation


# static fields
.field public static CUSTOM:Ljava/lang/String;

.field public static FAX_HOME:Ljava/lang/String;

.field public static FAX_WORK:Ljava/lang/String;

.field public static HOME:Ljava/lang/String;

.field public static MOBILE:Ljava/lang/String;

.field public static OTHER:Ljava/lang/String;

.field public static PAGER:Ljava/lang/String;

.field public static WORK:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const v0, 0x7f0600ca

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->HOME:Ljava/lang/String;

    .line 26
    const v0, 0x7f0600cb

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->MOBILE:Ljava/lang/String;

    .line 27
    const v0, 0x7f0600cc

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->CUSTOM:Ljava/lang/String;

    .line 28
    const v0, 0x7f0600cd

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->FAX_HOME:Ljava/lang/String;

    .line 29
    const v0, 0x7f0600ce

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->FAX_WORK:Ljava/lang/String;

    .line 30
    const v0, 0x7f0600cf

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->OTHER:Ljava/lang/String;

    .line 31
    const v0, 0x7f0600d0

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->PAGER:Ljava/lang/String;

    .line 32
    const v0, 0x7f0600d1

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->WORK:Ljava/lang/String;

    .line 33
    return-void
.end method
