.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureGcmProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoginNotificationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final CREATION_TIME_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

.field public static final EMAIL_FIELD_NUMBER:I = 0x3

.field public static final EVENT_TYPE_FIELD_NUMBER:I = 0x6

.field public static final HOST_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private creationTime_:J

.field private email_:Ljava/lang/String;

.field private eventType_:Ljava/lang/String;

.field private host_:Ljava/lang/String;

.field private source_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8780
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    .line 8781
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->makeImmutable()V

    .line 8782
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 7849
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7850
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->creationTime_:J

    .line 7851
    const-string v0, ""

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->email_:Ljava/lang/String;

    .line 7852
    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->host_:Ljava/lang/String;

    .line 7853
    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->source_:Ljava/lang/String;

    .line 7854
    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->eventType_:Ljava/lang/String;

    .line 7855
    return-void
.end method

.method static synthetic access$10200()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .locals 1

    .line 7844
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .param p1, "x1"    # J

    .line 7844
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->setCreationTime(J)V

    return-void
.end method

.method static synthetic access$10400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    .line 7844
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->clearCreationTime()V

    return-void
.end method

.method static synthetic access$10500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 7844
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->setEmail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    .line 7844
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->clearEmail()V

    return-void
.end method

.method static synthetic access$10700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 7844
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->setEmailBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 7844
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->setHost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    .line 7844
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->clearHost()V

    return-void
.end method

.method static synthetic access$11000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 7844
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->setHostBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 7844
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->setSource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    .line 7844
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->clearSource()V

    return-void
.end method

.method static synthetic access$11300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 7844
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->setSourceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 7844
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->setEventType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    .line 7844
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->clearEventType()V

    return-void
.end method

.method static synthetic access$11600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 7844
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->setEventTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearCreationTime()V
    .locals 2

    .line 7898
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 7899
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->creationTime_:J

    .line 7900
    return-void
.end method

.method private clearEmail()V
    .locals 1

    .line 7958
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 7959
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->email_:Ljava/lang/String;

    .line 7960
    return-void
.end method

.method private clearEventType()V
    .locals 1

    .line 8183
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8184
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getEventType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->eventType_:Ljava/lang/String;

    .line 8185
    return-void
.end method

.method private clearHost()V
    .locals 1

    .line 8033
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8034
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->host_:Ljava/lang/String;

    .line 8035
    return-void
.end method

.method private clearSource()V
    .locals 1

    .line 8108
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8109
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->source_:Ljava/lang/String;

    .line 8110
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .locals 1

    .line 8785
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1

    .line 8314
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    .line 8317
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8291
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8297
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8255
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8262
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8302
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8309
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8279
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8286
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8267
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8274
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;",
            ">;"
        }
    .end annotation

    .line 8791
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCreationTime(J)V
    .locals 1
    .param p1, "value"    # J

    .line 7887
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 7888
    iput-wide p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->creationTime_:J

    .line 7889
    return-void
.end method

.method private setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 7944
    if-eqz p1, :cond_0

    .line 7947
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 7948
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->email_:Ljava/lang/String;

    .line 7949
    return-void

    .line 7945
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setEmailBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 7970
    if-eqz p1, :cond_0

    .line 7973
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 7974
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->email_:Ljava/lang/String;

    .line 7975
    return-void

    .line 7971
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setEventType(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8169
    if-eqz p1, :cond_0

    .line 8172
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8173
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->eventType_:Ljava/lang/String;

    .line 8174
    return-void

    .line 8170
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setEventTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8195
    if-eqz p1, :cond_0

    .line 8198
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8199
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->eventType_:Ljava/lang/String;

    .line 8200
    return-void

    .line 8196
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8019
    if-eqz p1, :cond_0

    .line 8022
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8023
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->host_:Ljava/lang/String;

    .line 8024
    return-void

    .line 8020
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setHostBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8045
    if-eqz p1, :cond_0

    .line 8048
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8049
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->host_:Ljava/lang/String;

    .line 8050
    return-void

    .line 8046
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8094
    if-eqz p1, :cond_0

    .line 8097
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8098
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->source_:Ljava/lang/String;

    .line 8099
    return-void

    .line 8095
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setSourceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8120
    if-eqz p1, :cond_0

    .line 8123
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8124
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->source_:Ljava/lang/String;

    .line 8125
    return-void

    .line 8121
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

    .line 8664
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 8773
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 8764
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    monitor-enter v0

    .line 8765
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 8766
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8768
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8770
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 8702
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 8704
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 8707
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 8708
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_9

    .line 8709
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 8710
    .local v3, "tag":I
    if-eqz v3, :cond_7

    const/16 v4, 0x11

    if-eq v3, v4, :cond_6

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_5

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x32

    if-eq v3, v4, :cond_2

    .line 8715
    invoke-virtual {p0, v3, v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 8716
    const/4 v2, 0x1

    goto :goto_2

    .line 8744
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    .line 8745
    .local v4, "s":Ljava/lang/String;
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8746
    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->eventType_:Ljava/lang/String;

    .line 8747
    goto :goto_2

    .line 8738
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    .line 8739
    .restart local v4    # "s":Ljava/lang/String;
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8740
    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->source_:Ljava/lang/String;

    .line 8741
    goto :goto_2

    .line 8732
    .end local v4    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    .line 8733
    .restart local v4    # "s":Ljava/lang/String;
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8734
    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->host_:Ljava/lang/String;

    .line 8735
    goto :goto_2

    .line 8726
    .end local v4    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    .line 8727
    .restart local v4    # "s":Ljava/lang/String;
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8728
    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->email_:Ljava/lang/String;

    .line 8729
    goto :goto_2

    .line 8721
    .end local v4    # "s":Ljava/lang/String;
    :cond_6
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8722
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->creationTime_:J
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8723
    goto :goto_2

    .line 8712
    :cond_7
    const/4 v2, 0x1

    .line 8713
    nop

    .line 8750
    .end local v3    # "tag":I
    :cond_8
    :goto_2
    goto :goto_1

    .line 8757
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 8753
    :catch_0
    move-exception v2

    .line 8754
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 8756
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 8751
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 8752
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8757
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 8758
    :cond_9
    nop

    .line 8761
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0

    .line 8678
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 8679
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v8, p3

    check-cast v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    .line 8680
    .local v8, "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    nop

    .line 8681
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasCreationTime()Z

    move-result v2

    iget-wide v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->creationTime_:J

    .line 8682
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasCreationTime()Z

    move-result v5

    iget-wide v6, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->creationTime_:J

    .line 8680
    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->creationTime_:J

    .line 8683
    nop

    .line 8684
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasEmail()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->email_:Ljava/lang/String;

    .line 8685
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasEmail()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->email_:Ljava/lang/String;

    .line 8683
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->email_:Ljava/lang/String;

    .line 8686
    nop

    .line 8687
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasHost()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->host_:Ljava/lang/String;

    .line 8688
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasHost()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->host_:Ljava/lang/String;

    .line 8686
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->host_:Ljava/lang/String;

    .line 8689
    nop

    .line 8690
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasSource()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->source_:Ljava/lang/String;

    .line 8691
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasSource()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->source_:Ljava/lang/String;

    .line 8689
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->source_:Ljava/lang/String;

    .line 8692
    nop

    .line 8693
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasEventType()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->eventType_:Ljava/lang/String;

    .line 8694
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasEventType()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->eventType_:Ljava/lang/String;

    .line 8692
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->eventType_:Ljava/lang/String;

    .line 8695
    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v1, :cond_a

    .line 8697
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    iget v2, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    .line 8699
    :cond_a
    return-object p0

    .line 8675
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v8    # "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;)V

    return-object v0

    .line 8672
    :pswitch_5
    return-object v1

    .line 8669
    :pswitch_6
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    return-object v0

    .line 8666
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;-><init>()V

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

.method public getCreationTime()J
    .locals 2

    .line 7877
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->creationTime_:J

    return-wide v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 7922
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7933
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->email_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 8147
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->eventType_:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8158
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->eventType_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 7997
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->host_:Ljava/lang/String;

    return-object v0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8008
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->host_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 8223
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->memoizedSerializedSize:I

    .line 8224
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 8226
    :cond_0
    const/4 v0, 0x0

    .line 8227
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1

    .line 8228
    iget-wide v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->creationTime_:J

    .line 8229
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8231
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 8232
    const/4 v1, 0x3

    .line 8233
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8235
    :cond_2
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 8236
    nop

    .line 8237
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8239
    :cond_3
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 8240
    const/4 v1, 0x5

    .line 8241
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8243
    :cond_4
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 8244
    const/4 v1, 0x6

    .line 8245
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getEventType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8247
    :cond_5
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 8248
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->memoizedSerializedSize:I

    .line 8249
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 8072
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8083
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->source_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCreationTime()Z
    .locals 2

    .line 7867
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasEmail()Z
    .locals 2

    .line 7912
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

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

.method public hasEventType()Z
    .locals 2

    .line 8137
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

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

.method public hasHost()Z
    .locals 2

    .line 7987
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .line 8062
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

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

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8204
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 8205
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->creationTime_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 8207
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 8208
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 8210
    :cond_1
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 8211
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 8213
    :cond_2
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 8214
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 8216
    :cond_3
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 8217
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 8219
    :cond_4
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 8220
    return-void
.end method
