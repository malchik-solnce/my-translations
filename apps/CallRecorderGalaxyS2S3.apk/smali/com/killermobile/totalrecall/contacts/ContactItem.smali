.class public Lcom/killermobile/totalrecall/contacts/ContactItem;
.super Ljava/lang/Object;
.source "ContactItem.java"


# static fields
.field public static final JSON_NUMBER:Ljava/lang/String; = "number"

.field public static final JSON_TITLE:Ljava/lang/String; = "title"

.field public static final JSON_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private number:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/killermobile/totalrecall/contacts/ContactItem;->title:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/killermobile/totalrecall/contacts/ContactItem;->number:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/killermobile/totalrecall/contacts/ContactItem;->type:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/killermobile/totalrecall/contacts/ContactItem;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/killermobile/totalrecall/contacts/ContactItem;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/killermobile/totalrecall/contacts/ContactItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/killermobile/totalrecall/contacts/ContactItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;
    .locals 0
    .parameter "number"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/killermobile/totalrecall/contacts/ContactItem;->number:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/killermobile/totalrecall/contacts/ContactItem;
    .locals 0
    .parameter "tag"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/killermobile/totalrecall/contacts/ContactItem;->tag:Ljava/lang/Object;

    .line 55
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;
    .locals 0
    .parameter "title"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/killermobile/totalrecall/contacts/ContactItem;->title:Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;
    .locals 0
    .parameter "type"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/killermobile/totalrecall/contacts/ContactItem;->type:Ljava/lang/String;

    .line 46
    return-object p0
.end method
