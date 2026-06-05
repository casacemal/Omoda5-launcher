.class public final Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ukey2Message"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;,
        Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2MessageOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

.field public static final MESSAGE_DATA_FIELD_NUMBER:I = 0x2

.field public static final MESSAGE_TYPE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private messageData_:Lcom/google/protobuf/ByteString;

.field private messageType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 642
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    .line 643
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->makeImmutable()V

    .line 644
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageType_:I

    .line 150
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageData_:Lcom/google/protobuf/ByteString;

    .line 151
    return-void
.end method

.method static synthetic access$000()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .locals 1

    .line 143
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    .line 143
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->setMessageType(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    .line 143
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->clearMessageType()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 143
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->setMessageData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    .line 143
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->clearMessageData()V

    return-void
.end method

.method private clearMessageData()V
    .locals 1

    .line 339
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    .line 340
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getMessageData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageData_:Lcom/google/protobuf/ByteString;

    .line 341
    return-void
.end method

.method private clearMessageType()V
    .locals 1

    .line 291
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageType_:I

    .line 293
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .locals 1

    .line 647
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;
    .locals 1

    .line 434
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    .line 437
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 387
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;",
            ">;"
        }
    .end annotation

    .line 653
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMessageData(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 325
    if-eqz p1, :cond_0

    .line 328
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    .line 329
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageData_:Lcom/google/protobuf/ByteString;

    .line 330
    return-void

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setMessageType(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    .line 277
    if-eqz p1, :cond_0

    .line 280
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    .line 281
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageType_:I

    .line 282
    return-void

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 635
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 626
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    monitor-enter v0

    .line 627
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 628
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->PARSER:Lcom/google/protobuf/Parser;

    .line 630
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 632
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 577
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 579
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 582
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 583
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_7

    .line 584
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 585
    .local v3, "tag":I
    if-eqz v3, :cond_5

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_2

    .line 590
    invoke-virtual {p0, v3, v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 591
    const/4 v2, 0x1

    goto :goto_2

    .line 607
    :cond_2
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    .line 608
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageData_:Lcom/google/protobuf/ByteString;

    goto :goto_2

    .line 596
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 597
    .local v4, "rawValue":I
    invoke-static {v4}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    move-result-object v5

    .line 598
    .local v5, "value":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;
    const/4 v6, 0x1

    if-nez v5, :cond_4

    .line 599
    invoke-super {p0, v6, v4}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_2

    .line 601
    :cond_4
    iget v7, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    .line 602
    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageType_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 604
    goto :goto_2

    .line 587
    .end local v4    # "rawValue":I
    .end local v5    # "value":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;
    :cond_5
    const/4 v2, 0x1

    .line 588
    nop

    .line 612
    .end local v3    # "tag":I
    :cond_6
    :goto_2
    goto :goto_1

    .line 619
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 615
    :catch_0
    move-exception v2

    .line 616
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 618
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 613
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 614
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 619
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 620
    :cond_7
    nop

    .line 623
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0

    .line 563
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 564
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    .line 565
    .local v1, "other":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->hasMessageType()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageType_:I

    .line 566
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->hasMessageType()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageType_:I

    .line 565
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageType_:I

    .line 567
    nop

    .line 568
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->hasMessageData()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageData_:Lcom/google/protobuf/ByteString;

    .line 569
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->hasMessageData()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageData_:Lcom/google/protobuf/ByteString;

    .line 567
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageData_:Lcom/google/protobuf/ByteString;

    .line 570
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_8

    .line 572
    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    .line 574
    :cond_8
    return-object p0

    .line 560
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;)V

    return-object v0

    .line 557
    :pswitch_5
    return-object v1

    .line 554
    :pswitch_6
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    return-object v0

    .line 551
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;-><init>()V

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

.method public getMessageData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMessageType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;
    .locals 2

    .line 266
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageType_:I

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    move-result-object v0

    .line 267
    .local v0, "result":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->UNKNOWN_DO_NOT_USE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getSerializedSize()I
    .locals 3

    .line 355
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->memoizedSerializedSize:I

    .line 356
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 358
    :cond_0
    const/4 v0, 0x0

    .line 359
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 360
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageType_:I

    .line 361
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 364
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageData_:Lcom/google/protobuf/ByteString;

    .line 365
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->memoizedSerializedSize:I

    .line 369
    return v0
.end method

.method public hasMessageData()Z
    .locals 2

    .line 305
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

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

.method public hasMessageType()Z
    .locals 2

    .line 256
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 346
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageType_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 348
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->messageData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 352
    return-void
.end method
