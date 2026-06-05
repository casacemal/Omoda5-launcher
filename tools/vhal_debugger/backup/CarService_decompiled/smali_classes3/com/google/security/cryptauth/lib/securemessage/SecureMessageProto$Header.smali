.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderOrBuilder;"
    }
.end annotation


# static fields
.field public static final ASSOCIATED_DATA_LENGTH_FIELD_NUMBER:I = 0x7

.field public static final DECRYPTION_KEY_ID_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

.field public static final ENCRYPTION_SCHEME_FIELD_NUMBER:I = 0x2

.field public static final IV_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_METADATA_FIELD_NUMBER:I = 0x6

.field public static final SIGNATURE_SCHEME_FIELD_NUMBER:I = 0x1

.field public static final VERIFICATION_KEY_ID_FIELD_NUMBER:I = 0x3


# instance fields
.field private associatedDataLength_:I

.field private bitField0_:I

.field private decryptionKeyId_:Lcom/google/protobuf/ByteString;

.field private encryptionScheme_:I

.field private iv_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private publicMetadata_:Lcom/google/protobuf/ByteString;

.field private signatureScheme_:I

.field private verificationKeyId_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1769
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 1770
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->makeImmutable()V

    .line 1771
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 856
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1608
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->memoizedIsInitialized:B

    .line 857
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->signatureScheme_:I

    .line 858
    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->encryptionScheme_:I

    .line 859
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->verificationKeyId_:Lcom/google/protobuf/ByteString;

    .line 860
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->decryptionKeyId_:Lcom/google/protobuf/ByteString;

    .line 861
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->iv_:Lcom/google/protobuf/ByteString;

    .line 862
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->publicMetadata_:Lcom/google/protobuf/ByteString;

    .line 863
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->associatedDataLength_:I

    .line 864
    return-void
.end method

.method static synthetic access$1000(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 851
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->clearEncryptionScheme()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 851
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->setVerificationKeyId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 851
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->clearVerificationKeyId()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 851
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->setDecryptionKeyId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 851
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->clearDecryptionKeyId()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 851
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->setIv(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 851
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->clearIv()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 851
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->setPublicMetadata(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 851
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->clearPublicMetadata()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .param p1, "x1"    # I

    .line 851
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->setAssociatedDataLength(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 851
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->clearAssociatedDataLength()V

    return-void
.end method

.method static synthetic access$600()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1

    .line 851
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    .line 851
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->setSignatureScheme(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 851
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->clearSignatureScheme()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    .line 851
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->setEncryptionScheme(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;)V

    return-void
.end method

.method private clearAssociatedDataLength()V
    .locals 1

    .line 1169
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1170
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->associatedDataLength_:I

    .line 1171
    return-void
.end method

.method private clearDecryptionKeyId()V
    .locals 1

    .line 1024
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1025
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getDecryptionKeyId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->decryptionKeyId_:Lcom/google/protobuf/ByteString;

    .line 1026
    return-void
.end method

.method private clearEncryptionScheme()V
    .locals 1

    .line 928
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 929
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->encryptionScheme_:I

    .line 930
    return-void
.end method

.method private clearIv()V
    .locals 1

    .line 1072
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1073
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getIv()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->iv_:Lcom/google/protobuf/ByteString;

    .line 1074
    return-void
.end method

.method private clearPublicMetadata()V
    .locals 1

    .line 1120
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1121
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getPublicMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->publicMetadata_:Lcom/google/protobuf/ByteString;

    .line 1122
    return-void
.end method

.method private clearSignatureScheme()V
    .locals 1

    .line 895
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 896
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->signatureScheme_:I

    .line 897
    return-void
.end method

.method private clearVerificationKeyId()V
    .locals 1

    .line 976
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 977
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getVerificationKeyId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->verificationKeyId_:Lcom/google/protobuf/ByteString;

    .line 978
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1

    .line 1774
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1

    .line 1299
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 1302
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1276
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1282
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1240
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1247
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1287
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1294
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1264
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1271
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1252
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1259
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;",
            ">;"
        }
    .end annotation

    .line 1780
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAssociatedDataLength(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1157
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1158
    iput p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->associatedDataLength_:I

    .line 1159
    return-void
.end method

.method private setDecryptionKeyId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1010
    if-eqz p1, :cond_0

    .line 1013
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1014
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->decryptionKeyId_:Lcom/google/protobuf/ByteString;

    .line 1015
    return-void

    .line 1011
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setEncryptionScheme(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    .line 918
    if-eqz p1, :cond_0

    .line 921
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 922
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->encryptionScheme_:I

    .line 923
    return-void

    .line 919
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setIv(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1058
    if-eqz p1, :cond_0

    .line 1061
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1062
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->iv_:Lcom/google/protobuf/ByteString;

    .line 1063
    return-void

    .line 1059
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPublicMetadata(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1106
    if-eqz p1, :cond_0

    .line 1109
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1110
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->publicMetadata_:Lcom/google/protobuf/ByteString;

    .line 1111
    return-void

    .line 1107
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setSignatureScheme(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    .line 885
    if-eqz p1, :cond_0

    .line 888
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 889
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->signatureScheme_:I

    .line 890
    return-void

    .line 886
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setVerificationKeyId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 962
    if-eqz p1, :cond_0

    .line 965
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 966
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->verificationKeyId_:Lcom/google/protobuf/ByteString;

    .line 967
    return-void

    .line 963
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1612
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1762
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1753
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    monitor-enter v0

    .line 1754
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 1755
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->PARSER:Lcom/google/protobuf/Parser;

    .line 1757
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1759
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 1673
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 1675
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v2, p3

    check-cast v2, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 1678
    .local v2, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v3, 0x0

    .line 1679
    .local v3, "done":Z
    :goto_1
    if-nez v3, :cond_d

    .line 1680
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 1681
    .local v4, "tag":I
    if-eqz v4, :cond_b

    const/16 v5, 0x8

    if-eq v4, v5, :cond_9

    const/16 v6, 0x10

    if-eq v4, v6, :cond_7

    const/16 v7, 0x1a

    if-eq v4, v7, :cond_6

    const/16 v7, 0x22

    if-eq v4, v7, :cond_5

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_4

    const/16 v5, 0x32

    if-eq v4, v5, :cond_3

    const/16 v5, 0x38

    if-eq v4, v5, :cond_2

    .line 1686
    invoke-virtual {p0, v4, v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1687
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1734
    :cond_2
    iget v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1735
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->associatedDataLength_:I

    goto :goto_2

    .line 1729
    :cond_3
    iget v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1730
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->publicMetadata_:Lcom/google/protobuf/ByteString;

    .line 1731
    goto :goto_2

    .line 1724
    :cond_4
    iget v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1725
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->iv_:Lcom/google/protobuf/ByteString;

    .line 1726
    goto :goto_2

    .line 1719
    :cond_5
    iget v6, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1720
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->decryptionKeyId_:Lcom/google/protobuf/ByteString;

    .line 1721
    goto :goto_2

    .line 1714
    :cond_6
    iget v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1715
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->verificationKeyId_:Lcom/google/protobuf/ByteString;

    .line 1716
    goto :goto_2

    .line 1703
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 1704
    .local v5, "rawValue":I
    invoke-static {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->forNumber(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    move-result-object v6

    .line 1705
    .local v6, "value":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;
    const/4 v7, 0x2

    if-nez v6, :cond_8

    .line 1706
    invoke-super {p0, v7, v5}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_2

    .line 1708
    :cond_8
    iget v8, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1709
    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->encryptionScheme_:I

    .line 1711
    goto :goto_2

    .line 1692
    .end local v5    # "rawValue":I
    .end local v6    # "value":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 1693
    .restart local v5    # "rawValue":I
    invoke-static {v5}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;->forNumber(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    move-result-object v6

    .line 1694
    .local v6, "value":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;
    if-nez v6, :cond_a

    .line 1695
    invoke-super {p0, v1, v5}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_2

    .line 1697
    :cond_a
    iget v7, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/2addr v7, v1

    iput v7, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1698
    iput v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->signatureScheme_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1700
    goto :goto_2

    .line 1683
    .end local v5    # "rawValue":I
    .end local v6    # "value":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;
    :cond_b
    const/4 v3, 0x1

    .line 1684
    nop

    .line 1739
    .end local v4    # "tag":I
    :cond_c
    :goto_2
    goto/16 :goto_1

    .line 1746
    .end local v3    # "done":Z
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 1742
    :catch_0
    move-exception v1

    .line 1743
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1745
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 1740
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 1741
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1746
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v1

    .line 1747
    :cond_d
    nop

    .line 1750
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v0

    .line 1645
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1646
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 1647
    .local v1, "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasSignatureScheme()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->signatureScheme_:I

    .line 1648
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasSignatureScheme()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->signatureScheme_:I

    .line 1647
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->signatureScheme_:I

    .line 1649
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasEncryptionScheme()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->encryptionScheme_:I

    .line 1650
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasEncryptionScheme()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->encryptionScheme_:I

    .line 1649
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->encryptionScheme_:I

    .line 1651
    nop

    .line 1652
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasVerificationKeyId()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->verificationKeyId_:Lcom/google/protobuf/ByteString;

    .line 1653
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasVerificationKeyId()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->verificationKeyId_:Lcom/google/protobuf/ByteString;

    .line 1651
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->verificationKeyId_:Lcom/google/protobuf/ByteString;

    .line 1654
    nop

    .line 1655
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasDecryptionKeyId()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->decryptionKeyId_:Lcom/google/protobuf/ByteString;

    .line 1656
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasDecryptionKeyId()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->decryptionKeyId_:Lcom/google/protobuf/ByteString;

    .line 1654
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->decryptionKeyId_:Lcom/google/protobuf/ByteString;

    .line 1657
    nop

    .line 1658
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasIv()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->iv_:Lcom/google/protobuf/ByteString;

    .line 1659
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasIv()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->iv_:Lcom/google/protobuf/ByteString;

    .line 1657
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->iv_:Lcom/google/protobuf/ByteString;

    .line 1660
    nop

    .line 1661
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasPublicMetadata()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->publicMetadata_:Lcom/google/protobuf/ByteString;

    .line 1662
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasPublicMetadata()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->publicMetadata_:Lcom/google/protobuf/ByteString;

    .line 1660
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->publicMetadata_:Lcom/google/protobuf/ByteString;

    .line 1663
    nop

    .line 1664
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasAssociatedDataLength()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->associatedDataLength_:I

    .line 1665
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasAssociatedDataLength()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->associatedDataLength_:I

    .line 1663
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->associatedDataLength_:I

    .line 1666
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_e

    .line 1668
    iget v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    .line 1670
    :cond_e
    return-object p0

    .line 1642
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    invoke-direct {v0, v2}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;-><init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V

    return-object v0

    .line 1639
    :pswitch_5
    return-object v2

    .line 1617
    :pswitch_6
    iget-byte v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->memoizedIsInitialized:B

    .line 1618
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_f

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v1

    .line 1619
    :cond_f
    if-nez v0, :cond_10

    return-object v2

    .line 1621
    :cond_10
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1622
    .local v3, "shouldMemoize":Z
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasSignatureScheme()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_12

    .line 1623
    if-eqz v3, :cond_11

    .line 1624
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->memoizedIsInitialized:B

    .line 1626
    :cond_11
    return-object v2

    .line 1628
    :cond_12
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasEncryptionScheme()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1629
    if-eqz v3, :cond_13

    .line 1630
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->memoizedIsInitialized:B

    .line 1632
    :cond_13
    return-object v2

    .line 1634
    :cond_14
    if-eqz v3, :cond_15

    iput-byte v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->memoizedIsInitialized:B

    .line 1635
    :cond_15
    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    return-object v1

    .line 1614
    .end local v0    # "isInitialized":B
    .end local v3    # "shouldMemoize":Z
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getAssociatedDataLength()I
    .locals 1

    .line 1146
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->associatedDataLength_:I

    return v0
.end method

.method public getDecryptionKeyId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->decryptionKeyId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEncryptionScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;
    .locals 2

    .line 911
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->encryptionScheme_:I

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->forNumber(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    move-result-object v0

    .line 912
    .local v0, "result":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;->NONE:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getIv()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1048
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->iv_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPublicMetadata()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1096
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->publicMetadata_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1200
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->memoizedSerializedSize:I

    .line 1201
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1203
    :cond_0
    const/4 v0, 0x0

    .line 1204
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1205
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->signatureScheme_:I

    .line 1206
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1208
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1209
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->encryptionScheme_:I

    .line 1210
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1212
    :cond_2
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 1213
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->verificationKeyId_:Lcom/google/protobuf/ByteString;

    .line 1214
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1216
    :cond_3
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 1217
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->decryptionKeyId_:Lcom/google/protobuf/ByteString;

    .line 1218
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1220
    :cond_4
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 1221
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->iv_:Lcom/google/protobuf/ByteString;

    .line 1222
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1224
    :cond_5
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 1225
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->publicMetadata_:Lcom/google/protobuf/ByteString;

    .line 1226
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1228
    :cond_6
    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 1229
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->associatedDataLength_:I

    .line 1230
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1232
    :cond_7
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1233
    iput v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->memoizedSerializedSize:I

    .line 1234
    return v0
.end method

.method public getSignatureScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;
    .locals 2

    .line 878
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->signatureScheme_:I

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;->forNumber(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    move-result-object v0

    .line 879
    .local v0, "result":Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;->HMAC_SHA256:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getVerificationKeyId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->verificationKeyId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAssociatedDataLength()Z
    .locals 2

    .line 1135
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDecryptionKeyId()Z
    .locals 2

    .line 990
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEncryptionScheme()Z
    .locals 2

    .line 905
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIv()Z
    .locals 2

    .line 1038
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPublicMetadata()Z
    .locals 2

    .line 1086
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSignatureScheme()Z
    .locals 2

    .line 872
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVerificationKeyId()Z
    .locals 2

    .line 942
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1175
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1176
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->signatureScheme_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1178
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1179
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->encryptionScheme_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1181
    :cond_1
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 1182
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->verificationKeyId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1184
    :cond_2
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 1185
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->decryptionKeyId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1187
    :cond_3
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 1188
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->iv_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1190
    :cond_4
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    .line 1191
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->publicMetadata_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1193
    :cond_5
    iget v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    .line 1194
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->associatedDataLength_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1196
    :cond_6
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1197
    return-void
.end method
