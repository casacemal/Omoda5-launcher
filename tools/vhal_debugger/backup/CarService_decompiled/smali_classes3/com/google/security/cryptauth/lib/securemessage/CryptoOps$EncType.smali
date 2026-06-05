.class public final enum Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
.super Ljava/lang/Enum;
.source "CryptoOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/CryptoOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

.field public static final enum AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

.field public static final enum NONE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;


# instance fields
.field private final encScheme:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

.field private final jcaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 98
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->NONE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    const/4 v2, 0x0

    const-string v3, "NONE"

    const-string v4, "InvalidDoNotUseForJCA"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;Ljava/lang/String;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->NONE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    .line 99
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    const/4 v3, 0x1

    const-string v4, "AES_256_CBC"

    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;-><init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;Ljava/lang/String;)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->NONE:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->AES_256_CBC:Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->$VALUES:[Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;Ljava/lang/String;)V
    .locals 0
    .param p3, "encScheme"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;
    .param p4, "jcaName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput-object p3, p0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->encScheme:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    .line 123
    iput-object p4, p0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->jcaName:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public static valueOf(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;)Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    .locals 5
    .param p0, "encScheme"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    .line 110
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->values()[Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 111
    .local v3, "value":Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    iget-object v4, v3, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->encScheme:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    invoke-virtual {v4, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    return-object v3

    .line 110
    .end local v3    # "value":Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EncType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 97
    const-class v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;
    .locals 1

    .line 97
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->$VALUES:[Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;

    return-object v0
.end method


# virtual methods
.method public getEncScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->encScheme:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    return-object v0
.end method

.method public getJcaName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/CryptoOps$EncType;->jcaName:Ljava/lang/String;

    return-object v0
.end method
