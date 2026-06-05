.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureGcmProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$TickleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tickle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$TickleOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

.field public static final EXPIRY_TIME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private expiryTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7701
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    .line 7702
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->makeImmutable()V

    .line 7703
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 7418
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7419
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->expiryTime_:J

    .line 7420
    return-void
.end method

.method static synthetic access$10000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    .line 7413
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->clearExpiryTime()V

    return-void
.end method

.method static synthetic access$9800()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .locals 1

    .line 7413
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .param p1, "x1"    # J

    .line 7413
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->setExpiryTime(J)V

    return-void
.end method

.method private clearExpiryTime()V
    .locals 2

    .line 7463
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->bitField0_:I

    .line 7464
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->expiryTime_:J

    .line 7465
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .locals 1

    .line 7706
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;
    .locals 1

    .line 7551
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    .line 7554
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7528
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7534
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7492
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7499
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7539
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7546
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7516
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7523
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7504
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7511
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;",
            ">;"
        }
    .end annotation

    .line 7712
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setExpiryTime(J)V
    .locals 1
    .param p1, "value"    # J

    .line 7452
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->bitField0_:I

    .line 7453
    iput-wide p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->expiryTime_:J

    .line 7454
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 7621
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 7694
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 7685
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    monitor-enter v0

    .line 7686
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 7687
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->PARSER:Lcom/google/protobuf/Parser;

    .line 7689
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7691
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 7647
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 7649
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 7652
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 7653
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_5

    .line 7654
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 7655
    .local v3, "tag":I
    if-eqz v3, :cond_3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    .line 7660
    invoke-virtual {p0, v3, v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 7661
    const/4 v2, 0x1

    goto :goto_2

    .line 7666
    :cond_2
    iget v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->bitField0_:I

    .line 7667
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->expiryTime_:J
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 7657
    :cond_3
    const/4 v2, 0x1

    .line 7658
    nop

    .line 7671
    .end local v3    # "tag":I
    :cond_4
    :goto_2
    goto :goto_1

    .line 7678
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 7674
    :catch_0
    move-exception v2

    .line 7675
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 7677
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 7672
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 7673
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7678
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 7679
    :cond_5
    nop

    .line 7682
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0

    .line 7635
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 7636
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v8, p3

    check-cast v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    .line 7637
    .local v8, "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    nop

    .line 7638
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->hasExpiryTime()Z

    move-result v2

    iget-wide v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->expiryTime_:J

    .line 7639
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->hasExpiryTime()Z

    move-result v5

    iget-wide v6, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->expiryTime_:J

    .line 7637
    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->expiryTime_:J

    .line 7640
    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v1, :cond_6

    .line 7642
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->bitField0_:I

    iget v2, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->bitField0_:I

    .line 7644
    :cond_6
    return-object p0

    .line 7632
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v8    # "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;)V

    return-object v0

    .line 7629
    :pswitch_5
    return-object v1

    .line 7626
    :pswitch_6
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    return-object v0

    .line 7623
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;-><init>()V

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

.method public getExpiryTime()J
    .locals 2

    .line 7442
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->expiryTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 7476
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->memoizedSerializedSize:I

    .line 7477
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7479
    :cond_0
    const/4 v0, 0x0

    .line 7480
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 7481
    iget-wide v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->expiryTime_:J

    .line 7482
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7484
    :cond_1
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7485
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->memoizedSerializedSize:I

    .line 7486
    return v0
.end method

.method public hasExpiryTime()Z
    .locals 2

    .line 7432
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->bitField0_:I

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
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7469
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 7470
    iget-wide v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->expiryTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 7472
    :cond_0
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 7473
    return-void
.end method
