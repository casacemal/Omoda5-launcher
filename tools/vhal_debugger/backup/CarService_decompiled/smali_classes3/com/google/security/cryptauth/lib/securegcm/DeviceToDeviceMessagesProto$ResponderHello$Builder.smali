.class public final Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DeviceToDeviceMessagesProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHelloOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHelloOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1357
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->access$1400()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1358
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;

    .line 1350
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearProtocolVersion()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;
    .locals 1

    .line 1470
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->copyOnWrite()V

    .line 1471
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->access$2000(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;)V

    .line 1472
    return-object p0
.end method

.method public clearPublicDhKey()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;
    .locals 1

    .line 1425
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->copyOnWrite()V

    .line 1426
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->access$1800(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;)V

    .line 1427
    return-object p0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->getProtocolVersion()I

    move-result v0

    return v0
.end method

.method public getPublicDhKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1

    .line 1379
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->getPublicDhKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public hasProtocolVersion()Z
    .locals 1

    .line 1438
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->hasProtocolVersion()Z

    move-result v0

    return v0
.end method

.method public hasPublicDhKey()Z
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->hasPublicDhKey()Z

    move-result v0

    return v0
.end method

.method public mergePublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 1414
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->copyOnWrite()V

    .line 1415
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->access$1700(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V

    .line 1416
    return-object p0
.end method

.method public setProtocolVersion(I)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1458
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->copyOnWrite()V

    .line 1459
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->access$1900(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;I)V

    .line 1460
    return-object p0
.end method

.method public setPublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    .line 1402
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->copyOnWrite()V

    .line 1403
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->access$1600(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;)V

    .line 1404
    return-object p0
.end method

.method public setPublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 1389
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->copyOnWrite()V

    .line 1390
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;->access$1500(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHello;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V

    .line 1391
    return-object p0
.end method
