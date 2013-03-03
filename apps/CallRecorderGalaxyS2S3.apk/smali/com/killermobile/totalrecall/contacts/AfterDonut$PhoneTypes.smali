.class Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;
.super Ljava/lang/Object;
.source "AfterDonut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/contacts/AfterDonut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneTypes"
.end annotation


# static fields
.field public static TYPE_ASSISTANT:Ljava/lang/String;

.field public static TYPE_CALLBACK:Ljava/lang/String;

.field public static TYPE_CAR:Ljava/lang/String;

.field public static TYPE_COMPANY_MAIN:Ljava/lang/String;

.field public static TYPE_FAX_HOME:Ljava/lang/String;

.field public static TYPE_FAX_WORK:Ljava/lang/String;

.field public static TYPE_HOME:Ljava/lang/String;

.field public static TYPE_ISDN:Ljava/lang/String;

.field public static TYPE_MAIN:Ljava/lang/String;

.field public static TYPE_MMS:Ljava/lang/String;

.field public static TYPE_MOBILE:Ljava/lang/String;

.field public static TYPE_OTHER:Ljava/lang/String;

.field public static TYPE_OTHER_FAX:Ljava/lang/String;

.field public static TYPE_PAGER:Ljava/lang/String;

.field public static TYPE_RADIO:Ljava/lang/String;

.field public static TYPE_TELEX:Ljava/lang/String;

.field public static TYPE_TTY_TDD:Ljava/lang/String;

.field public static TYPE_WORK:Ljava/lang/String;

.field public static TYPE_WORK_MOBILE:Ljava/lang/String;

.field public static TYPE_WORK_PAGER:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const v0, 0x7f0600d2

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_ASSISTANT:Ljava/lang/String;

    .line 24
    const v0, 0x7f0600d3

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_CALLBACK:Ljava/lang/String;

    .line 25
    const v0, 0x7f0600d4

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_CAR:Ljava/lang/String;

    .line 26
    const v0, 0x7f0600d5

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_COMPANY_MAIN:Ljava/lang/String;

    .line 27
    const v0, 0x7f0600d6

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_FAX_HOME:Ljava/lang/String;

    .line 28
    const v0, 0x7f0600d7

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_FAX_WORK:Ljava/lang/String;

    .line 29
    const v0, 0x7f0600d8

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_HOME:Ljava/lang/String;

    .line 30
    const v0, 0x7f0600d9

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_ISDN:Ljava/lang/String;

    .line 31
    const v0, 0x7f0600da

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_MAIN:Ljava/lang/String;

    .line 32
    const v0, 0x7f0600db

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_MMS:Ljava/lang/String;

    .line 33
    const v0, 0x7f0600dc

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_MOBILE:Ljava/lang/String;

    .line 34
    const v0, 0x7f0600dd

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_OTHER:Ljava/lang/String;

    .line 35
    const v0, 0x7f0600de

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_OTHER_FAX:Ljava/lang/String;

    .line 36
    const v0, 0x7f0600df

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_PAGER:Ljava/lang/String;

    .line 37
    const v0, 0x7f0600e0

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_RADIO:Ljava/lang/String;

    .line 38
    const v0, 0x7f0600e1

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_TELEX:Ljava/lang/String;

    .line 39
    const v0, 0x7f0600e2

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_TTY_TDD:Ljava/lang/String;

    .line 40
    const v0, 0x7f0600e3

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_WORK:Ljava/lang/String;

    .line 41
    const v0, 0x7f0600e4

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_WORK_MOBILE:Ljava/lang/String;

    .line 42
    const v0, 0x7f0600e5

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_WORK_PAGER:Ljava/lang/String;

    .line 43
    return-void
.end method
