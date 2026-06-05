.class Lcom/android/car/trust/BLEVersionExchangeResolver;
.super Ljava/lang/Object;
.source "BLEVersionExchangeResolver.java"


# static fields
.field private static final MESSAGING_VERSION:I = 0x1

.field private static final SECURITY_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BLEVersionExchangeResolver"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasSupportedVersion(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;)Z
    .locals 5
    .param p0, "versionExchange"    # Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    .line 41
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->getMinSupportedMessagingVersion()I

    move-result v0

    .line 42
    .local v0, "minMessagingVersion":I
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->getMinSupportedSecurityVersion()I

    move-result v1

    .line 44
    .local v1, "minSecurityVersion":I
    const-string v2, "BLEVersionExchangeResolver"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking for supported version on (minMessagingVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", minSecurityVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static makeVersionExchange()Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
    .locals 2

    .line 58
    invoke-static {}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->newBuilder()Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;

    move-result-object v0

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->setMinSupportedMessagingVersion(I)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->setMaxSupportedMessagingVersion(I)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->setMinSupportedSecurityVersion(I)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->setMaxSupportedSecurityVersion(I)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->build()Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    .line 58
    return-object v0
.end method
