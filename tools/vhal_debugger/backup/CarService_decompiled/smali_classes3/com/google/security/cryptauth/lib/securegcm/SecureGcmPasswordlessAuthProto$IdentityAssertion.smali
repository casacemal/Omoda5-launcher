.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureGcmPasswordlessAuthProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdentityAssertion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertionOrBuilder;"
    }
.end annotation


# static fields
.field public static final BROWSER_DATA_HASH_FIELD_NUMBER:I = 0x1

.field public static final COUNTER_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_APPROVAL_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private browserDataHash_:Lcom/google/protobuf/ByteString;

.field private counter_:J

.field private userApproval_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 612
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    .line 613
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->makeImmutable()V

    .line 614
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 83
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->browserDataHash_:Lcom/google/protobuf/ByteString;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->counter_:J

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->userApproval_:I

    .line 86
    return-void
.end method

.method static synthetic access$000()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .locals 1

    .line 77
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 77
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->setBrowserDataHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    .line 77
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->clearBrowserDataHash()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .param p1, "x1"    # J

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->setCounter(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    .line 77
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->clearCounter()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->setUserApproval(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    .line 77
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->clearUserApproval()V

    return-void
.end method

.method private clearBrowserDataHash()V
    .locals 1

    .line 132
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    .line 133
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->getBrowserDataHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->browserDataHash_:Lcom/google/protobuf/ByteString;

    .line 134
    return-void
.end method

.method private clearCounter()V
    .locals 2

    .line 177
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->counter_:J

    .line 179
    return-void
.end method

.method private clearUserApproval()V
    .locals 1

    .line 238
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->userApproval_:I

    .line 240
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .locals 1

    .line 617
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;
    .locals 1

    .line 340
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    .line 343
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 293
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 300
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;",
            ">;"
        }
    .end annotation

    .line 623
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBrowserDataHash(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 118
    if-eqz p1, :cond_0

    .line 121
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    .line 122
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->browserDataHash_:Lcom/google/protobuf/ByteString;

    .line 123
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setCounter(J)V
    .locals 1
    .param p1, "value"    # J

    .line 166
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    .line 167
    iput-wide p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->counter_:J

    .line 168
    return-void
.end method

.method private setUserApproval(I)V
    .locals 1
    .param p1, "value"    # I

    .line 223
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    .line 224
    iput p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->userApproval_:I

    .line 225
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 605
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 596
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    monitor-enter v0

    .line 597
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 598
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->PARSER:Lcom/google/protobuf/Parser;

    .line 600
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 602
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 548
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 550
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 553
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 554
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_7

    .line 555
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 556
    .local v3, "tag":I
    if-eqz v3, :cond_5

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    const/16 v4, 0x10

    if-eq v3, v4, :cond_3

    const/16 v4, 0x18

    if-eq v3, v4, :cond_2

    .line 561
    invoke-virtual {p0, v3, v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 562
    const/4 v2, 0x1

    goto :goto_2

    .line 577
    :cond_2
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    .line 578
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->userApproval_:I

    goto :goto_2

    .line 572
    :cond_3
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    .line 573
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->counter_:J

    .line 574
    goto :goto_2

    .line 567
    :cond_4
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    .line 568
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->browserDataHash_:Lcom/google/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 569
    goto :goto_2

    .line 558
    :cond_5
    const/4 v2, 0x1

    .line 559
    nop

    .line 582
    .end local v3    # "tag":I
    :cond_6
    :goto_2
    goto :goto_1

    .line 589
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 585
    :catch_0
    move-exception v2

    .line 586
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 588
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 583
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 584
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 589
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 590
    :cond_7
    nop

    .line 593
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0

    .line 530
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 531
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v8, p3

    check-cast v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    .line 532
    .local v8, "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    nop

    .line 533
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->hasBrowserDataHash()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->browserDataHash_:Lcom/google/protobuf/ByteString;

    .line 534
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->hasBrowserDataHash()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->browserDataHash_:Lcom/google/protobuf/ByteString;

    .line 532
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->browserDataHash_:Lcom/google/protobuf/ByteString;

    .line 535
    nop

    .line 536
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->hasCounter()Z

    move-result v2

    iget-wide v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->counter_:J

    .line 537
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->hasCounter()Z

    move-result v5

    iget-wide v6, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->counter_:J

    .line 535
    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->counter_:J

    .line 538
    nop

    .line 539
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->hasUserApproval()Z

    move-result v1

    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->userApproval_:I

    .line 540
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->hasUserApproval()Z

    move-result v3

    iget v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->userApproval_:I

    .line 538
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v1

    iput v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->userApproval_:I

    .line 541
    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v1, :cond_8

    .line 543
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    iget v2, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    .line 545
    :cond_8
    return-object p0

    .line 527
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v8    # "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$1;)V

    return-object v0

    .line 524
    :pswitch_5
    return-object v1

    .line 521
    :pswitch_6
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    return-object v0

    .line 518
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;-><init>()V

    return-object v0

    nop

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

.method public getBrowserDataHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->browserDataHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCounter()J
    .locals 2

    .line 156
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->counter_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 257
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->memoizedSerializedSize:I

    .line 258
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 261
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 262
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->browserDataHash_:Lcom/google/protobuf/ByteString;

    .line 263
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 266
    iget-wide v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->counter_:J

    .line 267
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_2
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 270
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->userApproval_:I

    .line 271
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 274
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->memoizedSerializedSize:I

    .line 275
    return v0
.end method

.method public getUserApproval()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->userApproval_:I

    return v0
.end method

.method public hasBrowserDataHash()Z
    .locals 2

    .line 98
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasCounter()Z
    .locals 2

    .line 146
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

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

.method public hasUserApproval()Z
    .locals 2

    .line 195
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

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
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->browserDataHash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 247
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 248
    iget-wide v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->counter_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 250
    :cond_1
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 251
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->userApproval_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 254
    return-void
.end method
