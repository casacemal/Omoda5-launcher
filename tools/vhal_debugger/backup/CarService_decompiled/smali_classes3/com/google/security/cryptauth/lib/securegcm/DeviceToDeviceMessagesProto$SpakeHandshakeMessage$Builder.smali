.class public final Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DeviceToDeviceMessagesProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2587
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->access$3000()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2588
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;

    .line 2580
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEcPoint()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    .locals 1

    .line 2700
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->copyOnWrite()V

    .line 2701
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->access$3600(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;)V

    .line 2702
    return-object p0
.end method

.method public clearFlowNumber()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    .locals 1

    .line 2631
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->copyOnWrite()V

    .line 2632
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->access$3200(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;)V

    .line 2633
    return-object p0
.end method

.method public clearHashValue()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    .locals 1

    .line 2745
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->copyOnWrite()V

    .line 2746
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->access$3800(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;)V

    .line 2747
    return-object p0
.end method

.method public clearPayload()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    .locals 1

    .line 2794
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->copyOnWrite()V

    .line 2795
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->access$4000(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;)V

    .line 2796
    return-object p0
.end method

.method public getEcPoint()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
    .locals 1

    .line 2654
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getEcPoint()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    move-result-object v0

    return-object v0
.end method

.method public getFlowNumber()I
    .locals 1

    .line 2609
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getFlowNumber()I

    move-result v0

    return v0
.end method

.method public getHashValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2723
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getHashValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2770
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasEcPoint()Z
    .locals 1

    .line 2644
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasEcPoint()Z

    move-result v0

    return v0
.end method

.method public hasFlowNumber()Z
    .locals 1

    .line 2599
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasFlowNumber()Z

    move-result v0

    return v0
.end method

.method public hasHashValue()Z
    .locals 1

    .line 2713
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasHashValue()Z

    move-result v0

    return v0
.end method

.method public hasPayload()Z
    .locals 1

    .line 2759
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->hasPayload()Z

    move-result v0

    return v0
.end method

.method public mergeEcPoint(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2689
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->copyOnWrite()V

    .line 2690
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->access$3500(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V

    .line 2691
    return-object p0
.end method

.method public setEcPoint(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;

    .line 2677
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->copyOnWrite()V

    .line 2678
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->access$3400(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;)V

    .line 2679
    return-object p0
.end method

.method public setEcPoint(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    .line 2664
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->copyOnWrite()V

    .line 2665
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->access$3300(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V

    .line 2666
    return-object p0
.end method

.method public setFlowNumber(I)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 2619
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->copyOnWrite()V

    .line 2620
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->access$3100(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;I)V

    .line 2621
    return-object p0
.end method

.method public setHashValue(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2733
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->copyOnWrite()V

    .line 2734
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->access$3700(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;Lcom/google/protobuf/ByteString;)V

    .line 2735
    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2781
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->copyOnWrite()V

    .line 2782
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;->access$3900(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$SpakeHandshakeMessage;Lcom/google/protobuf/ByteString;)V

    .line 2783
    return-object p0
.end method
