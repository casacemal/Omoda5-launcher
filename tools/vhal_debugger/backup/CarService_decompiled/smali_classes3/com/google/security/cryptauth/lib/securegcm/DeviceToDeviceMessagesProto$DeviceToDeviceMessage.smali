.class public final Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DeviceToDeviceMessagesProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceToDeviceMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessageOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

.field public static final MESSAGE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEQUENCE_NUMBER_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private message_:Lcom/google/protobuf/ByteString;

.field private sequenceNumber_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 518
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    .line 519
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->makeImmutable()V

    .line 520
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 123
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->message_:Lcom/google/protobuf/ByteString;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->sequenceNumber_:I

    .line 125
    return-void
.end method

.method static synthetic access$000()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 1

    .line 117
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 117
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->setMessage(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    .line 117
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->clearMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->setSequenceNumber(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    .line 117
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->clearSequenceNumber()V

    return-void
.end method

.method private clearMessage()V
    .locals 1

    .line 171
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    .line 172
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->getMessage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->message_:Lcom/google/protobuf/ByteString;

    .line 173
    return-void
.end method

.method private clearSequenceNumber()V
    .locals 1

    .line 216
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->sequenceNumber_:I

    .line 218
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 1

    .line 523
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;
    .locals 1

    .line 311
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    .line 314
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;",
            ">;"
        }
    .end annotation

    .line 529
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMessage(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 157
    if-eqz p1, :cond_0

    .line 160
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    .line 161
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->message_:Lcom/google/protobuf/ByteString;

    .line 162
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setSequenceNumber(I)V
    .locals 1
    .param p1, "value"    # I

    .line 205
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    .line 206
    iput p1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->sequenceNumber_:I

    .line 207
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 511
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 502
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    monitor-enter v0

    .line 503
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 504
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 506
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 508
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 459
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 461
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 464
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 465
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_6

    .line 466
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 467
    .local v3, "tag":I
    if-eqz v3, :cond_4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    .line 472
    invoke-virtual {p0, v3, v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 473
    const/4 v2, 0x1

    goto :goto_2

    .line 483
    :cond_2
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    .line 484
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->sequenceNumber_:I

    goto :goto_2

    .line 478
    :cond_3
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    .line 479
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->message_:Lcom/google/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 480
    goto :goto_2

    .line 469
    :cond_4
    const/4 v2, 0x1

    .line 470
    nop

    .line 488
    .end local v3    # "tag":I
    :cond_5
    :goto_2
    goto :goto_1

    .line 495
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 491
    :catch_0
    move-exception v2

    .line 492
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 494
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 489
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 490
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 495
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 496
    :cond_6
    nop

    .line 499
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0

    .line 444
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 445
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    .line 446
    .local v1, "other":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    nop

    .line 447
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->hasMessage()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->message_:Lcom/google/protobuf/ByteString;

    .line 448
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->hasMessage()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->message_:Lcom/google/protobuf/ByteString;

    .line 446
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->message_:Lcom/google/protobuf/ByteString;

    .line 449
    nop

    .line 450
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->hasSequenceNumber()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->sequenceNumber_:I

    .line 451
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->hasSequenceNumber()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->sequenceNumber_:I

    .line 449
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->sequenceNumber_:I

    .line 452
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_7

    .line 454
    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    .line 456
    :cond_7
    return-object p0

    .line 441
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;)V

    return-object v0

    .line 438
    :pswitch_5
    return-object v1

    .line 435
    :pswitch_6
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    return-object v0

    .line 432
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;-><init>()V

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

.method public getMessage()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->message_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->sequenceNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 232
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->memoizedSerializedSize:I

    .line 233
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 236
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 237
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->message_:Lcom/google/protobuf/ByteString;

    .line 238
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 241
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->sequenceNumber_:I

    .line 242
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->memoizedSerializedSize:I

    .line 246
    return v0
.end method

.method public hasMessage()Z
    .locals 2

    .line 137
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSequenceNumber()Z
    .locals 2

    .line 185
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

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

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->message_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 225
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 226
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->sequenceNumber_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$DeviceToDeviceMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 229
    return-void
.end method
