.class public final Li/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/security/KeyStore;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string p1, "ZA_AP_fragment"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    iput v0, p0, Li/a;->b:I

    .line 8
    .line 9
    const-string v1, "AndroidKeyStore"

    .line 10
    .line 11
    :try_start_0
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput-object v2, p0, Li/a;->a:Ljava/security/KeyStore;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Li/a;->a:Ljava/security/KeyStore;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const-string v2, "AES"

    .line 30
    .line 31
    invoke-static {v2, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 36
    .line 37
    invoke-direct {v2, p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string p1, "GCM"

    .line 41
    .line 42
    filled-new-array {p1}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "NoPadding"

    .line 51
    .line 52
    filled-new-array {v0}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v1, p1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    :catch_0
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 5

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const-string v2, "/"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v2, "."

    .line 14
    .line 15
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const-string p0, "ZAza"

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    if-ge v3, v0, :cond_1

    .line 37
    .line 38
    rem-int v4, v3, v2

    .line 39
    .line 40
    sub-int v4, v2, v4

    .line 41
    .line 42
    add-int/lit8 v4, v4, -0x1

    .line 43
    .line 44
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    int-to-byte v4, v4

    .line 49
    aput-byte v4, v1, v3

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    iget v1, p0, Li/a;->b:I

    .line 6
    .line 7
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "AES/GCM/NoPadding"

    .line 12
    .line 13
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Li/a;->a:Ljava/security/KeyStore;

    .line 18
    .line 19
    const-string v3, "ZA_AP_fragment"

    .line 20
    .line 21
    invoke-virtual {v2, v3, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljavax/crypto/SecretKey;

    .line 26
    .line 27
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    .line 28
    .line 29
    const/16 v4, 0x80

    .line 30
    .line 31
    invoke-direct {v3, v4, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 32
    .line 33
    .line 34
    const/4 p2, 0x2

    .line 35
    invoke-virtual {v1, p2, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance p2, Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "UTF-8"

    .line 45
    .line 46
    invoke-direct {p2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    move-object v0, p2

    .line 50
    :catch_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v1, p0, Li/a;->a:Ljava/security/KeyStore;

    .line 12
    .line 13
    const-string v2, "ZA_AP_fragment"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljavax/crypto/SecretKey;

    .line 20
    .line 21
    const-string v2, "AES/GCM/NoPadding"

    .line 22
    .line 23
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    .line 28
    .line 29
    const/16 v4, 0x80

    .line 30
    .line 31
    invoke-direct {v3, v4, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 32
    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-virtual {v2, p2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget p2, p0, Li/a;->b:I

    .line 43
    .line 44
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    return-object v0
.end method
