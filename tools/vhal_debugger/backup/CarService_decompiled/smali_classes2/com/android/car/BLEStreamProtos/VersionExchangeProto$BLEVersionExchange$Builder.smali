.class public final Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;
.super Lcom/android/car/protobuf/GeneratedMessageLite$Builder;
.source "VersionExchangeProto.java"

# interfaces
.implements Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;",
        "Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;",
        ">;",
        "Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 324
    invoke-static {}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->access$000()Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/car/protobuf/GeneratedMessageLite;)V

    .line 325
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/BLEStreamProtos/VersionExchangeProto$1;

    .line 317
    invoke-direct {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMaxSupportedMessagingVersion()Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->copyOnWrite()V

    .line 394
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->access$400(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;)V

    .line 395
    return-object p0
.end method

.method public clearMaxSupportedSecurityVersion()Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->copyOnWrite()V

    .line 464
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->access$800(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;)V

    .line 465
    return-object p0
.end method

.method public clearMinSupportedMessagingVersion()Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->copyOnWrite()V

    .line 359
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->access$200(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;)V

    .line 360
    return-object p0
.end method

.method public clearMinSupportedSecurityVersion()Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->copyOnWrite()V

    .line 429
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->access$600(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;)V

    .line 430
    return-object p0
.end method

.method public getMaxSupportedMessagingVersion()I
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->getMaxSupportedMessagingVersion()I

    move-result v0

    return v0
.end method

.method public getMaxSupportedSecurityVersion()I
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->getMaxSupportedSecurityVersion()I

    move-result v0

    return v0
.end method

.method public getMinSupportedMessagingVersion()I
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->getMinSupportedMessagingVersion()I

    move-result v0

    return v0
.end method

.method public getMinSupportedSecurityVersion()I
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->getMinSupportedSecurityVersion()I

    move-result v0

    return v0
.end method

.method public setMaxSupportedMessagingVersion(I)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 381
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->copyOnWrite()V

    .line 382
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->access$300(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;I)V

    .line 383
    return-object p0
.end method

.method public setMaxSupportedSecurityVersion(I)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 451
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->copyOnWrite()V

    .line 452
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->access$700(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;I)V

    .line 453
    return-object p0
.end method

.method public setMinSupportedMessagingVersion(I)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 346
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->copyOnWrite()V

    .line 347
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->access$100(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;I)V

    .line 348
    return-object p0
.end method

.method public setMinSupportedSecurityVersion(I)Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 416
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->copyOnWrite()V

    .line 417
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;

    invoke-static {v0, p1}, Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;->access$500(Lcom/android/car/BLEStreamProtos/VersionExchangeProto$BLEVersionExchange;I)V

    .line 418
    return-object p0
.end method
