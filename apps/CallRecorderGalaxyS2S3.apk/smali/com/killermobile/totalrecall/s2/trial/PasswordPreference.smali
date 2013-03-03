.class public Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;
.super Lorg/appforce/ui/DialogBuilder$AlertDialog;
.source "PasswordPreference.java"


# static fields
.field public static final KEY_PASSWORD:Ljava/lang/String;

.field private static final PASSWORD:[C

.field private static final SALT:[B


# instance fields
.field private final context:Landroid/content/Context;

.field private final passField:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_password"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->KEY_PASSWORD:Ljava/lang/String;

    .line 34
    const-string v0, "# malm29loOs47Sigh84LySSa&dak18forKS)tunNy92ache"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->PASSWORD:[C

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->SALT:[B

    .line 26
    return-void

    .line 35
    nop

    :array_0
    .array-data 0x1
        0xdet
        0x33t
        0x10t
        0x12t
        0xdet
        0x33t
        0x10t
        0x12t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->passField:Landroid/widget/EditText;

    .line 43
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->context:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->passField:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->setView(Landroid/view/View;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    .line 45
    const-string v0, "Ok"

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference$1;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;)V

    invoke-virtual {p0, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    .line 52
    const-string v0, "Отмена"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    .line 53
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->passField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static base64Decode(Ljava/lang/String;)[B
    .locals 1
    .parameter "property"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static base64Encode([B)Ljava/lang/String;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "property"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const-string v3, "PBEWithMD5AndDES"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 105
    .local v1, keyFactory:Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->PASSWORD:[C

    invoke-direct {v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v1, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 106
    .local v0, key:Ljavax/crypto/SecretKey;
    const-string v3, "PBEWithMD5AndDES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 107
    .local v2, pbeCipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    sget-object v5, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->SALT:[B

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v2, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 108
    new-instance v3, Ljava/lang/String;

    invoke-static {p0}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->base64Decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "property"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 92
    const-string v3, "PBEWithMD5AndDES"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 93
    .local v1, keyFactory:Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->PASSWORD:[C

    invoke-direct {v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v1, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 94
    .local v0, key:Ljavax/crypto/SecretKey;
    const-string v3, "PBEWithMD5AndDES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 95
    .local v2, pbeCipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    sget-object v5, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->SALT:[B

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v2, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->base64Encode([B)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "defaultReturnValue"

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->KEY_PASSWORD:Ljava/lang/String;

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, encrypted:Ljava/lang/String;
    if-nez v1, :cond_1

    move-object p1, v2

    .line 71
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 61
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    :cond_2
    :try_start_0
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .end local v0           #e:Ljava/security/GeneralSecurityException;
    :goto_1
    move-object p1, v2

    .line 71
    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 68
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->passField:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 88
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->passField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method private persistString(Ljava/lang/String;)Z
    .locals 4
    .parameter "value"

    .prologue
    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 77
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->KEY_PASSWORD:Ljava/lang/String;

    invoke-static {p1}, Lcom/killermobile/totalrecall/s2/trial/PasswordPreference;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v2, 0x1

    .line 83
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 83
    const/4 v2, 0x0

    goto :goto_0
.end method
