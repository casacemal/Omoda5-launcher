.class public final Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DeviceToDeviceMessagesProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EcPoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPointOrBuilder;"
    }
.end annotation


# static fields
.field public static final CURVE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final X_FIELD_NUMBER:I = 0x2

.field public static final Y_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private curve_:I

.field private memoizedIsInitialized:B

.field private x_:Lcom/google/protobuf/ByteString;

.field private y_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2142
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2143
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->makeImmutable()V

    .line 2144
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1658
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2012
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->memoizedIsInitialized:B

    .line 1659
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->curve_:I

    .line 1660
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->x_:Lcom/google/protobuf/ByteString;

    .line 1661
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->y_:Lcom/google/protobuf/ByteString;

    .line 1662
    return-void
.end method

.method static synthetic access$2200()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1

    .line 1653
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;

    .line 1653
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->setCurve(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 1653
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->clearCurve()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1653
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->setX(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 1653
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->clearX()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1653
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->setY(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 1653
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->clearY()V

    return-void
.end method

.method private clearCurve()V
    .locals 1

    .line 1693
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    .line 1694
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->curve_:I

    .line 1695
    return-void
.end method

.method private clearX()V
    .locals 1

    .line 1745
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    .line 1746
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->getX()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->x_:Lcom/google/protobuf/ByteString;

    .line 1747
    return-void
.end method

.method private clearY()V
    .locals 1

    .line 1777
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    .line 1778
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->getY()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->y_:Lcom/google/protobuf/ByteString;

    .line 1779
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1

    .line 2147
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;
    .locals 1

    .line 1879
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 1882
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1856
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1862
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1820
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1827
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1867
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1874
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1844
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1851
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1832
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1839
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;",
            ">;"
        }
    .end annotation

    .line 2153
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCurve(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;

    .line 1683
    if-eqz p1, :cond_0

    .line 1686
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    .line 1687
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->curve_:I

    .line 1688
    return-void

    .line 1684
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setX(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1730
    if-eqz p1, :cond_0

    .line 1733
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    .line 1734
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->x_:Lcom/google/protobuf/ByteString;

    .line 1735
    return-void

    .line 1731
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setY(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1767
    if-eqz p1, :cond_0

    .line 1770
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    .line 1771
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->y_:Lcom/google/protobuf/ByteString;

    .line 1772
    return-void

    .line 1768
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

    .line 2016
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2126
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    monitor-enter v0

    .line 2127
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 2128
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->PARSER:Lcom/google/protobuf/Parser;

    .line 2130
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2132
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 2072
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 2074
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v2, p3

    check-cast v2, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 2077
    .local v2, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v3, 0x0

    .line 2078
    .local v3, "done":Z
    :goto_1
    if-nez v3, :cond_8

    .line 2079
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 2080
    .local v4, "tag":I
    if-eqz v4, :cond_6

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_2

    .line 2085
    invoke-virtual {p0, v4, v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2086
    const/4 v3, 0x1

    goto :goto_2

    .line 2107
    :cond_2
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    .line 2108
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->y_:Lcom/google/protobuf/ByteString;

    goto :goto_2

    .line 2102
    :cond_3
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    .line 2103
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->x_:Lcom/google/protobuf/ByteString;

    .line 2104
    goto :goto_2

    .line 2091
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 2092
    .local v5, "rawValue":I
    invoke-static {v5}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;

    move-result-object v6

    .line 2093
    .local v6, "value":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;
    if-nez v6, :cond_5

    .line 2094
    invoke-super {p0, v1, v5}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_2

    .line 2096
    :cond_5
    iget v7, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    or-int/2addr v7, v1

    iput v7, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    .line 2097
    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->curve_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2099
    goto :goto_2

    .line 2082
    .end local v5    # "rawValue":I
    .end local v6    # "value":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;
    :cond_6
    const/4 v3, 0x1

    .line 2083
    nop

    .line 2112
    .end local v4    # "tag":I
    :cond_7
    :goto_2
    goto :goto_1

    .line 2119
    .end local v3    # "done":Z
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 2115
    :catch_0
    move-exception v1

    .line 2116
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2118
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 2113
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 2114
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2119
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v1

    .line 2120
    :cond_8
    nop

    .line 2123
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v0

    .line 2055
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 2056
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2057
    .local v1, "other":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasCurve()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->curve_:I

    .line 2058
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasCurve()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->curve_:I

    .line 2057
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->curve_:I

    .line 2059
    nop

    .line 2060
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasX()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->x_:Lcom/google/protobuf/ByteString;

    .line 2061
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasX()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->x_:Lcom/google/protobuf/ByteString;

    .line 2059
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->x_:Lcom/google/protobuf/ByteString;

    .line 2062
    nop

    .line 2063
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasY()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->y_:Lcom/google/protobuf/ByteString;

    .line 2064
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasY()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->y_:Lcom/google/protobuf/ByteString;

    .line 2062
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->y_:Lcom/google/protobuf/ByteString;

    .line 2065
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_9

    .line 2067
    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    .line 2069
    :cond_9
    return-object p0

    .line 2052
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    invoke-direct {v0, v2}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;)V

    return-object v0

    .line 2049
    :pswitch_5
    return-object v2

    .line 2021
    :pswitch_6
    iget-byte v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->memoizedIsInitialized:B

    .line 2022
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_a

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v1

    .line 2023
    :cond_a
    if-nez v0, :cond_b

    return-object v2

    .line 2025
    :cond_b
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2026
    .local v3, "shouldMemoize":Z
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasCurve()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_d

    .line 2027
    if-eqz v3, :cond_c

    .line 2028
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->memoizedIsInitialized:B

    .line 2030
    :cond_c
    return-object v2

    .line 2032
    :cond_d
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasX()Z

    move-result v4

    if-nez v4, :cond_f

    .line 2033
    if-eqz v3, :cond_e

    .line 2034
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->memoizedIsInitialized:B

    .line 2036
    :cond_e
    return-object v2

    .line 2038
    :cond_f
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasY()Z

    move-result v4

    if-nez v4, :cond_11

    .line 2039
    if-eqz v3, :cond_10

    .line 2040
    iput-byte v5, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->memoizedIsInitialized:B

    .line 2042
    :cond_10
    return-object v2

    .line 2044
    :cond_11
    if-eqz v3, :cond_12

    iput-byte v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->memoizedIsInitialized:B

    .line 2045
    :cond_12
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    return-object v1

    .line 2018
    .end local v0    # "isInitialized":B
    .end local v3    # "shouldMemoize":Z
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;-><init>()V

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

.method public getCurve()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;
    .locals 2

    .line 1676
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->curve_:I

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;

    move-result-object v0

    .line 1677
    .local v0, "result":Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;->ED_25519:Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1796
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->memoizedSerializedSize:I

    .line 1797
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1799
    :cond_0
    const/4 v0, 0x0

    .line 1800
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1801
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->curve_:I

    .line 1802
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1804
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1805
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->x_:Lcom/google/protobuf/ByteString;

    .line 1806
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1808
    :cond_2
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 1809
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->y_:Lcom/google/protobuf/ByteString;

    .line 1810
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1812
    :cond_3
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1813
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->memoizedSerializedSize:I

    .line 1814
    return v0
.end method

.method public getX()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->x_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getY()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1761
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->y_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasCurve()Z
    .locals 2

    .line 1670
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasX()Z
    .locals 2

    .line 1708
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

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

.method public hasY()Z
    .locals 2

    .line 1755
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

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
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1783
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1784
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->curve_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1786
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1787
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->x_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1789
    :cond_1
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 1790
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->y_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1792
    :cond_2
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1793
    return-void
.end method
