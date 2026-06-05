.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureGcmProximityAuthProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairingOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 526
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->access$000()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 527
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$1;

    .line 519
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAdditionalMetadata()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
    .locals 1

    .line 777
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->copyOnWrite()V

    .line 778
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->access$1000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;)V

    .line 779
    return-object p0
.end method

.method public clearEphemeralSymmetricKey()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
    .locals 1

    .line 728
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->copyOnWrite()V

    .line 729
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->access$800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;)V

    .line 730
    return-object p0
.end method

.method public clearInitiatingDeviceBtAddress()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
    .locals 1

    .line 669
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->copyOnWrite()V

    .line 670
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->access$500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;)V

    .line 671
    return-object p0
.end method

.method public clearInitiatingDeviceName()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
    .locals 1

    .line 592
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->copyOnWrite()V

    .line 593
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->access$200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;)V

    .line 594
    return-object p0
.end method

.method public getAdditionalMetadata()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getAdditionalMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEphemeralSymmetricKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getEphemeralSymmetricKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInitiatingDeviceBtAddress()Ljava/lang/String;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getInitiatingDeviceBtAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitiatingDeviceBtAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getInitiatingDeviceBtAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInitiatingDeviceName()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getInitiatingDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitiatingDeviceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->getInitiatingDeviceNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAdditionalMetadata()Z
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->hasAdditionalMetadata()Z

    move-result v0

    return v0
.end method

.method public hasEphemeralSymmetricKey()Z
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->hasEphemeralSymmetricKey()Z

    move-result v0

    return v0
.end method

.method public hasInitiatingDeviceBtAddress()Z
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->hasInitiatingDeviceBtAddress()Z

    move-result v0

    return v0
.end method

.method public hasInitiatingDeviceName()Z
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->hasInitiatingDeviceName()Z

    move-result v0

    return v0
.end method

.method public setAdditionalMetadata(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 764
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->copyOnWrite()V

    .line 765
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->access$900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;Lcom/google/protobuf/ByteString;)V

    .line 766
    return-object p0
.end method

.method public setEphemeralSymmetricKey(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 716
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->copyOnWrite()V

    .line 717
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->access$700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;Lcom/google/protobuf/ByteString;)V

    .line 718
    return-object p0
.end method

.method public setInitiatingDeviceBtAddress(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 656
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->copyOnWrite()V

    .line 657
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->access$400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;Ljava/lang/String;)V

    .line 658
    return-object p0
.end method

.method public setInitiatingDeviceBtAddressBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 683
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->copyOnWrite()V

    .line 684
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->access$600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;Lcom/google/protobuf/ByteString;)V

    .line 685
    return-object p0
.end method

.method public setInitiatingDeviceName(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 578
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->copyOnWrite()V

    .line 579
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->access$100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;Ljava/lang/String;)V

    .line 580
    return-object p0
.end method

.method public setInitiatingDeviceNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 607
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->copyOnWrite()V

    .line 608
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;->access$300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$CloudToDeviceProximityAuthPairing;Lcom/google/protobuf/ByteString;)V

    .line 609
    return-object p0
.end method
