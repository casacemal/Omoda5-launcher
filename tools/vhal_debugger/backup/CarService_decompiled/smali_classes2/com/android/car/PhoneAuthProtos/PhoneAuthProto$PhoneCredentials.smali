.class public final Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
.super Lcom/android/car/protobuf/GeneratedMessageLite;
.source "PhoneAuthProto.java"

# interfaces
.implements Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentialsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/PhoneAuthProtos/PhoneAuthProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneCredentials"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/protobuf/GeneratedMessageLite<",
        "Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;",
        "Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;",
        ">;",
        "Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentialsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

.field public static final ESCROW_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final HANDLE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/car/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/protobuf/Parser<",
            "Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private escrowToken_:Lcom/android/car/protobuf/ByteString;

.field private handle_:Lcom/android/car/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 397
    new-instance v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-direct {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;-><init>()V

    sput-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    .line 398
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-virtual {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->makeImmutable()V

    .line 399
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;-><init>()V

    .line 43
    sget-object v0, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;

    .line 44
    sget-object v0, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    .line 45
    return-void
.end method

.method static synthetic access$000()Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .locals 1

    .line 37
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;Lcom/android/car/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .param p1, "x1"    # Lcom/android/car/protobuf/ByteString;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->setEscrowToken(Lcom/android/car/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    .line 37
    invoke-direct {p0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->clearEscrowToken()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;Lcom/android/car/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .param p1, "x1"    # Lcom/android/car/protobuf/ByteString;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->setHandle(Lcom/android/car/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    .line 37
    invoke-direct {p0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->clearHandle()V

    return-void
.end method

.method private clearEscrowToken()V
    .locals 1

    .line 81
    invoke-static {}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->getDefaultInstance()Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->getEscrowToken()Lcom/android/car/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;

    .line 82
    return-void
.end method

.method private clearHandle()V
    .locals 1

    .line 122
    invoke-static {}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->getDefaultInstance()Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->getHandle()Lcom/android/car/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    .line 123
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .locals 1

    .line 402
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;
    .locals 1

    .line 214
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-virtual {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->toBuilder()Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    .line 217
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-virtual {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->toBuilder()Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;

    invoke-virtual {v0, p0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;->mergeFrom(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0, p0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->parseDelimitedFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0, p0, p1}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->parseDelimitedFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .locals 1
    .param p0, "data"    # Lcom/android/car/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .locals 1
    .param p0, "data"    # Lcom/android/car/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0, p0, p1}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .locals 1
    .param p0, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .locals 1
    .param p0, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0, p0, p1}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0, p0, p1}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;[B)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0
.end method

.method public static parseFrom([BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0, p0, p1}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;[BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0
.end method

.method public static parser()Lcom/android/car/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/car/protobuf/Parser<",
            "Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;",
            ">;"
        }
    .end annotation

    .line 408
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-virtual {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->getParserForType()Lcom/android/car/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEscrowToken(Lcom/android/car/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/android/car/protobuf/ByteString;

    .line 66
    if-eqz p1, :cond_0

    .line 70
    iput-object p1, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;

    .line 71
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setHandle(Lcom/android/car/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/android/car/protobuf/ByteString;

    .line 106
    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    .line 111
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 381
    :pswitch_0
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->PARSER:Lcom/android/car/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    monitor-enter v0

    .line 382
    :try_start_0
    sget-object v1, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->PARSER:Lcom/android/car/protobuf/Parser;

    if-nez v1, :cond_0

    .line 383
    new-instance v1, Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-direct {v1, v2}, Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/car/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->PARSER:Lcom/android/car/protobuf/Parser;

    .line 385
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 387
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->PARSER:Lcom/android/car/protobuf/Parser;

    return-object v0

    .line 338
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/android/car/protobuf/CodedInputStream;

    .line 340
    .local v0, "input":Lcom/android/car/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/android/car/protobuf/ExtensionRegistryLite;

    .line 343
    .local v1, "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 344
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_6

    .line 345
    :try_start_1
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 346
    .local v3, "tag":I
    if-eqz v3, :cond_4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_2

    .line 351
    invoke-virtual {v0, v3}, Lcom/android/car/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 352
    const/4 v2, 0x1

    goto :goto_2

    .line 363
    :cond_2
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readBytes()Lcom/android/car/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    goto :goto_2

    .line 358
    :cond_3
    invoke-virtual {v0}, Lcom/android/car/protobuf/CodedInputStream;->readBytes()Lcom/android/car/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;
    :try_end_1
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 359
    goto :goto_2

    .line 348
    :cond_4
    const/4 v2, 0x1

    .line 349
    nop

    .line 367
    .end local v3    # "tag":I
    :cond_5
    :goto_2
    goto :goto_1

    .line 374
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 370
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/android/car/protobuf/InvalidProtocolBufferException;

    .line 373
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/car/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .end local p1    # "method":Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 368
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .restart local p1    # "method":Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 369
    .local v2, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .end local p1    # "method":Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 374
    .end local v2    # "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    .restart local p1    # "method":Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 375
    :cond_6
    nop

    .line 378
    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0

    .line 326
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;

    .line 327
    .local v0, "visitor":Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    .line 328
    .local v1, "other":Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    iget-object v2, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;

    sget-object v3, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_7

    move v2, v4

    goto :goto_4

    :cond_7
    move v2, v5

    :goto_4
    iget-object v3, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;

    iget-object v6, v1, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;

    sget-object v7, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    if-eq v6, v7, :cond_8

    move v6, v4

    goto :goto_5

    :cond_8
    move v6, v5

    :goto_5
    iget-object v7, v1, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;

    invoke-interface {v0, v2, v3, v6, v7}, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/android/car/protobuf/ByteString;ZLcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;

    .line 330
    iget-object v2, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    sget-object v3, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    if-eq v2, v3, :cond_9

    move v2, v4

    goto :goto_6

    :cond_9
    move v2, v5

    :goto_6
    iget-object v3, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    iget-object v6, v1, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    sget-object v7, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    if-eq v6, v7, :cond_a

    goto :goto_7

    :cond_a
    move v4, v5

    :goto_7
    iget-object v5, v1, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/android/car/protobuf/ByteString;ZLcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    .line 332
    sget-object v2, Lcom/android/car/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/car/protobuf/GeneratedMessageLite$MergeFromVisitor;

    .line 335
    return-object p0

    .line 323
    .end local v0    # "visitor":Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
    :pswitch_4
    new-instance v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;

    invoke-direct {v0, v1}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;-><init>(Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$1;)V

    return-object v0

    .line 320
    :pswitch_5
    return-object v1

    .line 317
    :pswitch_6
    sget-object v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->DEFAULT_INSTANCE:Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    return-object v0

    .line 314
    :pswitch_7
    new-instance v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-direct {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;-><init>()V

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

.method public getEscrowToken()Lcom/android/car/protobuf/ByteString;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;

    return-object v0
.end method

.method public getHandle()Lcom/android/car/protobuf/ByteString;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 136
    iget v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->memoizedSerializedSize:I

    .line 137
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 140
    iget-object v1, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/android/car/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;

    .line 142
    invoke-static {v1, v2}, Lcom/android/car/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/car/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/android/car/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    .line 146
    invoke-static {v1, v2}, Lcom/android/car/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/car/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_2
    iput v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->memoizedSerializedSize:I

    .line 149
    return v0
.end method

.method public writeTo(Lcom/android/car/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/android/car/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/car/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->escrowToken_:Lcom/android/car/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/android/car/protobuf/CodedOutputStream;->writeBytes(ILcom/android/car/protobuf/ByteString;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/car/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->handle_:Lcom/android/car/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/android/car/protobuf/CodedOutputStream;->writeBytes(ILcom/android/car/protobuf/ByteString;)V

    .line 133
    :cond_1
    return-void
.end method
