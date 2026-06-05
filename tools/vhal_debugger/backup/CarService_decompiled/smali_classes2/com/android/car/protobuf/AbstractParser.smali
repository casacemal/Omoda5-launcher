.class public abstract Lcom/android/car/protobuf/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"

# interfaces
.implements Lcom/android/car/protobuf/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/android/car/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/car/protobuf/Parser<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    invoke-static {}, Lcom/android/car/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/car/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/android/car/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkMessageInitialized(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    .local p1, "message":Lcom/android/car/protobuf/MessageLite;, "TMessageType;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/car/protobuf/MessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/protobuf/AbstractParser;->newUninitializedMessageException(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/car/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 75
    :cond_1
    :goto_0
    return-object p1
.end method

.method private newUninitializedMessageException(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/UninitializedMessageException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "Lcom/android/car/protobuf/UninitializedMessageException;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    .local p1, "message":Lcom/android/car/protobuf/MessageLite;, "TMessageType;"
    instance-of v0, p1, Lcom/android/car/protobuf/AbstractMessageLite;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/android/car/protobuf/AbstractMessageLite;

    invoke-virtual {v0}, Lcom/android/car/protobuf/AbstractMessageLite;->newUninitializedMessageException()Lcom/android/car/protobuf/UninitializedMessageException;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Lcom/android/car/protobuf/UninitializedMessageException;

    invoke-direct {v0, p1}, Lcom/android/car/protobuf/UninitializedMessageException;-><init>(Lcom/android/car/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 256
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/car/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/car/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 250
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    nop

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    .line 250
    invoke-direct {p0, v0}, Lcom/android/car/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "data"    # Lcom/android/car/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/ByteString;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/car/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/car/protobuf/AbstractParser;->parseFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "data"    # Lcom/android/car/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/ByteString;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/CodedInputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/car/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/car/protobuf/AbstractParser;->parseFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/CodedInputStream;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    nop

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/protobuf/MessageLite;

    .line 90
    invoke-direct {p0, v0}, Lcom/android/car/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Ljava/io/InputStream;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 220
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/car/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/car/protobuf/AbstractParser;->parseFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    nop

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    .line 214
    invoke-direct {p0, v0}, Lcom/android/car/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 190
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/car/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/car/protobuf/AbstractParser;->parseFrom([BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([BII)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/car/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/car/protobuf/AbstractParser;->parseFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    nop

    .line 173
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    .line 172
    invoke-direct {p0, v0}, Lcom/android/car/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 185
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/car/protobuf/AbstractParser;->parseFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseFrom(Lcom/android/car/protobuf/ByteString;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractParser;->parseFrom(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractParser;->parseFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/android/car/protobuf/CodedInputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractParser;->parseFrom(Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractParser;->parseFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractParser;->parseFrom(Ljava/io/InputStream;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractParser;->parseFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractParser;->parseFrom([B)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BII)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/car/protobuf/AbstractParser;->parseFrom([BII)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/car/protobuf/AbstractParser;->parseFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BLcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractParser;->parseFrom([BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 244
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/car/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/car/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 229
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 230
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 231
    const/4 v1, 0x0

    return-object v1

    .line 233
    :cond_0
    invoke-static {v0, p1}, Lcom/android/car/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 236
    .local v0, "size":I
    nop

    .line 237
    new-instance v1, Lcom/android/car/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 238
    .local v1, "limitedInput":Ljava/io/InputStream;
    invoke-virtual {p0, v1, p2}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v2

    return-object v2

    .line 234
    .end local v0    # "size":I
    .end local v1    # "limitedInput":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/car/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/car/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "data"    # Lcom/android/car/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/ByteString;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/car/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 4
    .param p1, "data"    # Lcom/android/car/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/ByteString;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/android/car/protobuf/ByteString;->newCodedInput()Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v0

    .line 105
    .local v0, "input":Lcom/android/car/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    .local v1, "message":Lcom/android/car/protobuf/MessageLite;, "TMessageType;"
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/car/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    nop

    .line 111
    return-object v1

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    .end local p1    # "data":Lcom/android/car/protobuf/ByteString;
    .end local p2    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_2
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    .line 112
    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .end local v1    # "message":Lcom/android/car/protobuf/MessageLite;, "TMessageType;"
    .end local v2    # "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    .restart local p0    # "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    .restart local p1    # "data":Lcom/android/car/protobuf/ByteString;
    .restart local p2    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public parsePartialFrom(Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/CodedInputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/car/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/protobuf/MessageLite;

    return-object v0
.end method

.method public parsePartialFrom(Ljava/io/InputStream;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/car/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-static {p1}, Lcom/android/car/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v0

    .line 197
    .local v0, "codedInput":Lcom/android/car/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/protobuf/MessageLite;

    .line 199
    .local v1, "message":Lcom/android/car/protobuf/MessageLite;, "TMessageType;"
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/car/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    nop

    .line 203
    return-object v1

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2, v1}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method public parsePartialFrom([B)Lcom/android/car/protobuf/MessageLite;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    array-length v0, p1

    sget-object v1, Lcom/android/car/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom([BII)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 154
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/car/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 4
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/car/protobuf/CodedInputStream;->newInstance([BII)Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v0

    .line 139
    .local v0, "input":Lcom/android/car/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p4}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    .local v1, "message":Lcom/android/car/protobuf/MessageLite;, "TMessageType;"
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/car/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    nop

    .line 145
    return-object v1

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    .end local p1    # "data":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    .end local p4    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_2
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .end local v1    # "message":Lcom/android/car/protobuf/MessageLite;, "TMessageType;"
    .end local v2    # "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    .restart local p0    # "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    .restart local p1    # "data":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    .restart local p4    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public parsePartialFrom([BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 160
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/android/car/protobuf/ByteString;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/android/car/protobuf/CodedInputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom([B)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BII)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom([BII)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BLcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/car/protobuf/AbstractParser;, "Lcom/android/car/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractParser;->parsePartialFrom([BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method
