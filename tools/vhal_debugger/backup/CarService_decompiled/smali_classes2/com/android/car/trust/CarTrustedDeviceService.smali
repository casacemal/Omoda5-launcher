.class public Lcom/android/car/trust/CarTrustedDeviceService;
.super Ljava/lang/Object;
.source "CarTrustedDeviceService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# static fields
.field private static final CIPHER_TRANSFORMATION:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final DEVICE_NAME_LENGTH_LIMIT:I = 0x8

.field private static final DEVICE_NAME_PREFIX_LIMIT:I = 0x4

.field private static final GCM_AUTHENTICATION_TAG_LENGTH:I = 0x80

.field private static final IV_SPEC_SEPARATOR:Ljava/lang/String; = ";"

.field private static final KEYSTORE_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"

.field private static final KEY_ALIAS:Ljava/lang/String; = "Ukey2Key"

.field private static final PREF_ENCRYPTION_KEY_PREFIX:Ljava/lang/String; = "CTABM_encryption_key"

.field private static final TAG:Ljava/lang/String;

.field private static final UNIQUE_ID_KEY:Ljava/lang/String; = "CTABM_unique_id"


# instance fields
.field private mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

.field private mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

.field private mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

.field private final mContext:Landroid/content/Context;

.field private mEnrollmentDeviceName:Ljava/lang/String;

.field private mTrustAgentTokenPreferences:Landroid/content/SharedPreferences;

.field private mUniqueId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/trust/CarTrustedDeviceService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-direct {v0, p1}, Lcom/android/car/trust/CarTrustAgentBleManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 108
    new-instance v0, Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;-><init>(Landroid/content/Context;Lcom/android/car/trust/CarTrustedDeviceService;Lcom/android/car/trust/CarTrustAgentBleManager;)V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    .line 110
    new-instance v0, Lcom/android/car/trust/CarTrustAgentUnlockService;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-direct {v0, p0, v1}, Lcom/android/car/trust/CarTrustAgentUnlockService;-><init>(Lcom/android/car/trust/CarTrustedDeviceService;Lcom/android/car/trust/CarTrustAgentBleManager;)V

    iput-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    .line 112
    return-void
.end method

.method private static getDeviceInfoListString(ILjava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/car/trust/TrustedDeviceInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 196
    .local p1, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/car/trust/TrustedDeviceInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "device list of (user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 199
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 200
    const-string v2, "\n\tdevice# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/trust/TrustedDeviceInfo;

    invoke-virtual {v2}, Landroid/car/trust/TrustedDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 204
    :cond_1
    const-string v1, "\n\tno device listed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getKeyStoreKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 5
    .param p1, "keyAlias"    # Ljava/lang/String;

    .line 395
    const-string v0, "AndroidKeyStore"

    :try_start_0
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 396
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 397
    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 398
    const-string v3, "AES"

    invoke-static {v3, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 400
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, p1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 403
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 404
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 405
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v3

    .line 400
    invoke-virtual {v0, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 406
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 408
    .end local v0    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    :cond_0
    invoke-virtual {v1, p1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 410
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/car/trust/CarTrustedDeviceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from KeyStore."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method cleanupBleService()V
    .locals 2

    .line 166
    sget-object v0, Lcom/android/car/trust/CarTrustedDeviceService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcom/android/car/trust/CarTrustedDeviceService;->TAG:Ljava/lang/String;

    const-string v1, "cleanupBleService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->stopGattServer()V

    .line 170
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->stopEnrollmentAdvertising()V

    .line 171
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->stopUnlockAdvertising()V

    .line 172
    return-void
.end method

.method clearEncryptionKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 298
    if-nez p1, :cond_0

    .line 299
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    return-void
.end method

.method decryptWithKeyStore(Ljava/lang/String;[B[B)[B
    .locals 6
    .param p1, "keyAlias"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "ivSpec"    # [B

    .line 370
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 371
    return-object v0

    .line 375
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarTrustedDeviceService;->getKeyStoreKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    .line 376
    .local v1, "key":Ljava/security/Key;
    const-string v2, "AES/GCM/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 377
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, p3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 379
    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 380
    .end local v1    # "key":Ljava/security/Key;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/car/trust/CarTrustedDeviceService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to decrypt value with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 185
    const-string v0, "*CarTrustedDeviceService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 187
    .local v0, "uid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current user id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    .line 189
    invoke-virtual {v1, v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->getEnrolledDeviceInfosForUser(I)Ljava/util/List;

    move-result-object v1

    .line 190
    .local v1, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/car/trust/TrustedDeviceInfo;>;"
    invoke-static {v0, v1}, Lcom/android/car/trust/CarTrustedDeviceService;->getDeviceInfoListString(ILjava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    invoke-virtual {v2, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->dump(Ljava/io/PrintWriter;)V

    .line 192
    iget-object v2, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    invoke-virtual {v2, p1}, Lcom/android/car/trust/CarTrustAgentUnlockService;->dump(Ljava/io/PrintWriter;)V

    .line 193
    return-void
.end method

.method encryptWithKeyStore(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6
    .param p1, "keyAlias"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 338
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 339
    return-object v0

    .line 342
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/trust/CarTrustedDeviceService;->getKeyStoreKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    .line 344
    .local v1, "key":Ljava/security/Key;
    :try_start_0
    const-string v2, "AES/GCM/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 345
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 346
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, ";"

    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v4

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    return-object v0

    .line 350
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v2

    .line 356
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/car/trust/CarTrustedDeviceService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to encrypt value with key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    return-object v0
.end method

.method public getCarTrustAgentEnrollmentService()Lcom/android/car/trust/CarTrustAgentEnrollmentService;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    return-object v0
.end method

.method public getCarTrustAgentUnlockService()Lcom/android/car/trust/CarTrustAgentUnlockService;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    return-object v0
.end method

.method getEncryptionKey(Ljava/lang/String;)[B
    .locals 6
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CTABM_encryption_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 252
    return-object v3

    .line 256
    :cond_0
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "values":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 259
    return-object v3

    .line 262
    :cond_1
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 263
    .local v4, "encryptedKey":[B
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 264
    .local v3, "ivSpec":[B
    const-string v5, "Ukey2Key"

    invoke-virtual {p0, v5, v4, v3}, Lcom/android/car/trust/CarTrustedDeviceService;->decryptWithKeyStore(Ljava/lang/String;[B[B)[B

    move-result-object v5

    return-object v5
.end method

.method getEnrollmentDeviceName()Ljava/lang/String;
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mEnrollmentDeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 312
    invoke-static {}, Landroid/sysprop/CarProperties;->trusted_device_device_name_prefix()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    .local v0, "deviceNamePrefix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 313
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x8

    .line 317
    .local v1, "randomNameLength":I
    invoke-static {v1}, Lcom/android/car/Utils;->generateRandomNumberString(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "randomName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mEnrollmentDeviceName:Ljava/lang/String;

    .line 320
    .end local v0    # "deviceNamePrefix":Ljava/lang/String;
    .end local v1    # "randomNameLength":I
    .end local v2    # "randomName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mEnrollmentDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mTrustAgentTokenPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 176
    return-object v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0213

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mTrustAgentTokenPreferences:Landroid/content/SharedPreferences;

    .line 180
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mTrustAgentTokenPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method getUniqueId()Ljava/util/UUID;
    .locals 7

    .line 216
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mUniqueId:Ljava/util/UUID;

    if-eqz v0, :cond_0

    .line 217
    return-object v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "CTABM_unique_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 222
    nop

    .line 223
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mUniqueId:Ljava/util/UUID;

    .line 224
    sget-object v2, Lcom/android/car/trust/CarTrustedDeviceService;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    sget-object v2, Lcom/android/car/trust/CarTrustedDeviceService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found existing trusted unique id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mUniqueId:Ljava/util/UUID;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v6, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mUniqueId:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_2

    .line 231
    iput-object v5, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mUniqueId:Ljava/util/UUID;

    goto :goto_0

    .line 232
    :cond_2
    sget-object v2, Lcom/android/car/trust/CarTrustedDeviceService;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    sget-object v2, Lcom/android/car/trust/CarTrustedDeviceService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generated new trusted unique id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mUniqueId:Ljava/util/UUID;

    return-object v1
.end method

.method getUserHandleByTokenHandle(J)I
    .locals 3
    .param p1, "handle"    # J

    .line 148
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->init()V

    .line 117
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 115
    .end local p0    # "this":Lcom/android/car/trust/CarTrustedDeviceService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onDeviceNameRetrieved(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    invoke-virtual {v0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->onDeviceNameRetrieved(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method onRemoteDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 152
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    invoke-virtual {v0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->onRemoteDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 153
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    invoke-virtual {v0, p1}, Lcom/android/car/trust/CarTrustAgentUnlockService;->onRemoteDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 154
    return-void
.end method

.method onRemoteDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 157
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    invoke-virtual {v0, p1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->onRemoteDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 158
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    invoke-virtual {v0, p1}, Lcom/android/car/trust/CarTrustAgentUnlockService;->onRemoteDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 159
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentBleManager:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->cleanup()V

    .line 123
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentEnrollmentService:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->release()V

    .line 124
    iget-object v0, p0, Lcom/android/car/trust/CarTrustedDeviceService;->mCarTrustAgentUnlockService:Lcom/android/car/trust/CarTrustAgentUnlockService;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentUnlockService;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 121
    .end local p0    # "this":Lcom/android/car/trust/CarTrustedDeviceService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method saveEncryptionKey(Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "encryptionKey"    # [B

    .line 275
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    const-string v1, "Ukey2Key"

    invoke-virtual {p0, v1, p2}, Lcom/android/car/trust/CarTrustedDeviceService;->encryptWithKeyStore(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "encryptedKey":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 280
    return v0

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/car/trust/CarTrustedDeviceService;->clearEncryptionKey(Ljava/lang/String;)V

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/android/car/trust/CarTrustedDeviceService;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CTABM_encryption_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 286
    return v0

    .line 276
    .end local v1    # "encryptedKey":Ljava/lang/String;
    :cond_3
    :goto_0
    return v0
.end method
