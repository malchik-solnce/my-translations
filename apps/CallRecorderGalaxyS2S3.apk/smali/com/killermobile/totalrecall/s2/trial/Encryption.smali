.class public Lcom/killermobile/totalrecall/s2/trial/Encryption;
.super Ljava/lang/Object;
.source "Encryption.java"


# instance fields
.field private final CIPHER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "jh5jh5_f#$k54!5M+g^v"

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/Encryption;->CIPHER:Ljava/lang/String;

    .line 7
    return-void
.end method

.method private cipher(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "txt"

    .prologue
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->xor([C)[C

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->hex([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decipher(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "txt"

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v0, result:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->dehex([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->xor([C)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dehex([C)Ljava/lang/String;
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    .line 54
    array-length v2, p1

    .line 55
    .local v2, len:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 56
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 60
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    return-object v3

    .line 57
    :cond_0
    div-int/lit8 v3, v1, 0x2

    aget-char v4, p1, v1

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 58
    add-int/lit8 v5, v1, 0x1

    aget-char v5, p1, v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    .line 57
    aput-byte v4, v0, v3

    .line 56
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private hex([C)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v1, result:Ljava/lang/StringBuilder;
    array-length v4, p1

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 46
    :cond_0
    aget-char v0, p1, v2

    .line 47
    .local v0, c:C
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private xor([C)[C
    .locals 5
    .parameter "str"

    .prologue
    .line 35
    array-length v2, p1

    new-array v1, v2, [C

    .line 36
    .local v1, result:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 39
    return-object v1

    .line 37
    :cond_0
    aget-char v2, p1, v0

    const-string v3, "jh5jh5_f#$k54!5M+g^v"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v4, "jh5jh5_f#$k54!5M+g^v"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v4, v4

    rem-int v4, v0, v4

    aget-char v3, v3, v4

    xor-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "txt"

    .prologue
    .line 15
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->decipher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "txt"

    .prologue
    .line 10
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->cipher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
