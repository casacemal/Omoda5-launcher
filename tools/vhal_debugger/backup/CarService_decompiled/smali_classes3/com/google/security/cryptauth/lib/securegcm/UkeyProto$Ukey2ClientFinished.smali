.class public final Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinishedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ukey2ClientFinished"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinishedOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_KEY_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private publicKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3568
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    .line 3569
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->makeImmutable()V

    .line 3570
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3282
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3283
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 3284
    return-void
.end method

.method static synthetic access$4700()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .locals 1

    .line 3277
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 3277
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->setPublicKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    .line 3277
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->clearPublicKey()V

    return-void
.end method

.method private clearPublicKey()V
    .locals 1

    .line 3330
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->bitField0_:I

    .line 3331
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 3332
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .locals 1

    .line 3573
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;
    .locals 1

    .line 3418
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    .line 3421
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3395
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3401
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3359
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3366
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3406
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3413
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3383
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3390
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3371
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3378
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;",
            ">;"
        }
    .end annotation

    .line 3579
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPublicKey(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3316
    if-eqz p1, :cond_0

    .line 3319
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->bitField0_:I

    .line 3320
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 3321
    return-void

    .line 3317
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 3488
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3561
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 3552
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    monitor-enter v0

    .line 3553
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 3554
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->PARSER:Lcom/google/protobuf/Parser;

    .line 3556
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3558
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 3514
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 3516
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 3519
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 3520
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_5

    .line 3521
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3522
    .local v3, "tag":I
    if-eqz v3, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    .line 3527
    invoke-virtual {p0, v3, v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3528
    const/4 v2, 0x1

    goto :goto_2

    .line 3533
    :cond_2
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->bitField0_:I

    .line 3534
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->publicKey_:Lcom/google/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 3524
    :cond_3
    const/4 v2, 0x1

    .line 3525
    nop

    .line 3538
    .end local v3    # "tag":I
    :cond_4
    :goto_2
    goto :goto_1

    .line 3545
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 3541
    :catch_0
    move-exception v2

    .line 3542
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 3544
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 3539
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 3540
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3545
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 3546
    :cond_5
    nop

    .line 3549
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0

    .line 3502
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 3503
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    .line 3504
    .local v1, "other":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    nop

    .line 3505
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->hasPublicKey()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 3506
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->hasPublicKey()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 3504
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 3507
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_6

    .line 3509
    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->bitField0_:I

    .line 3511
    :cond_6
    return-object p0

    .line 3499
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;)V

    return-object v0

    .line 3496
    :pswitch_5
    return-object v1

    .line 3493
    :pswitch_6
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    return-object v0

    .line 3490
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;-><init>()V

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

.method public getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3306
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->publicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3343
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->memoizedSerializedSize:I

    .line 3344
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3346
    :cond_0
    const/4 v0, 0x0

    .line 3347
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3348
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 3349
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3351
    :cond_1
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3352
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->memoizedSerializedSize:I

    .line 3353
    return v0
.end method

.method public hasPublicKey()Z
    .locals 2

    .line 3296
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->bitField0_:I

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

    .line 3336
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3337
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->publicKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3339
    :cond_0
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3340
    return-void
.end method
