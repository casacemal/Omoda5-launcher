.class public final enum Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
.super Ljava/lang/Enum;
.source "CryptoOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

.field public static final enum ECDSA_P256_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

.field public static final enum HMAC_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

.field public static final enum RSA2048_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;


# instance fields
.field private final jcaName:Ljava/lang/String;

.field private final publicKeyScheme:Z

.field private final sigScheme:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 54
    new-instance v6, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    sget-object v3, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;->HMAC_SHA256:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    const-string v1, "HMAC_SHA256"

    const/4 v2, 0x0

    const-string v4, "HmacSHA256"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;Ljava/lang/String;Z)V

    sput-object v6, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->HMAC_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    .line 55
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    sget-object v10, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;->ECDSA_P256_SHA256:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    const-string v8, "ECDSA_P256_SHA256"

    const/4 v9, 0x1

    const-string v11, "SHA256withECDSA"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->ECDSA_P256_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    .line 56
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    sget-object v4, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;->RSA2048_SHA256:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    const-string v2, "RSA2048_SHA256"

    const/4 v3, 0x2

    const-string v5, "SHA256withRSA"

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->RSA2048_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->HMAC_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->ECDSA_P256_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->RSA2048_SHA256:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->$VALUES:[Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;Ljava/lang/String;Z)V
    .locals 0
    .param p3, "sigType"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;
    .param p4, "jcaName"    # Ljava/lang/String;
    .param p5, "publicKeyScheme"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput-object p3, p0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->sigScheme:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    .line 85
    iput-object p4, p0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->jcaName:Ljava/lang/String;

    .line 86
    iput-boolean p5, p0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->publicKeyScheme:Z

    .line 87
    return-void
.end method

.method public static valueOf(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;)Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .locals 5
    .param p0, "sigScheme"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    .line 71
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->values()[Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 72
    .local v3, "value":Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    iget-object v4, v3, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->sigScheme:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    invoke-virtual {v4, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    return-object v3

    .line 71
    .end local v3    # "value":Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported SigType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;
    .locals 1

    .line 53
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->$VALUES:[Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;

    return-object v0
.end method


# virtual methods
.method public getJcaName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->jcaName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->sigScheme:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    return-object v0
.end method

.method public isPublicKeyScheme()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$SigType;->publicKeyScheme:Z

    return v0
.end method
