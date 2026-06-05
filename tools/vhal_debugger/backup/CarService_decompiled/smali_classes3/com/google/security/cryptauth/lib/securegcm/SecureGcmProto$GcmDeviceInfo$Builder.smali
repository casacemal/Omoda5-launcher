.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureGcmProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4399
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$000()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4400
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;

    .line 4392
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllEnabledSoftwareFeatures(Ljava/lang/Iterable;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;)",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;"
        }
    .end annotation

    .line 6384
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;>;"
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6385
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$8400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSupportedSoftwareFeatures(Ljava/lang/Iterable;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;)",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;"
        }
    .end annotation

    .line 6298
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;>;"
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6299
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$8000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addEnabledSoftwareFeatures(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 6370
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6371
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$8300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V

    .line 6372
    return-object p0
.end method

.method public addSupportedSoftwareFeatures(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 6285
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6286
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$7900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V

    .line 6287
    return-object p0
.end method

.method public clearAndroidDeviceId()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 4451
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4452
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 4453
    return-object p0
.end method

.method public clearApnRegistrationId()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 4541
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4542
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 4543
    return-object p0
.end method

.method public clearArcPlusPlus()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 6176
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6177
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$7500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 6178
    return-object p0
.end method

.method public clearAutoUnlockScreenlockEnabled()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5861
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5862
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$6100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5863
    return-object p0
.end method

.method public clearAutoUnlockScreenlockSupported()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5816
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5817
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$5900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5818
    return-object p0
.end method

.method public clearBleRadioSupported()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 6086
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6087
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$7100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 6088
    return-object p0
.end method

.method public clearBluetoothMacAddress()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 4648
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4649
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$1000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 4650
    return-object p0
.end method

.method public clearBluetoothRadioEnabled()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5951
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5952
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$6500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5953
    return-object p0
.end method

.method public clearBluetoothRadioSupported()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5906
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5907
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$6300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5908
    return-object p0
.end method

.method public clearCounter()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 4992
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4993
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$2500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 4994
    return-object p0
.end method

.method public clearDeviceAuthzenVersion()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5560
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5561
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$4800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5562
    return-object p0
.end method

.method public clearDeviceDisplayDiagonalMils()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5515
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5516
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$4600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5517
    return-object p0
.end method

.method public clearDeviceManufacturer()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5667
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5668
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$5200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5669
    return-object p0
.end method

.method public clearDeviceMasterKeyHash()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 4711
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4712
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$1300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 4713
    return-object p0
.end method

.method public clearDeviceModel()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 4818
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4819
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$1700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 4820
    return-object p0
.end method

.method public clearDeviceOsCodename()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5255
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5256
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$3500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5257
    return-object p0
.end method

.method public clearDeviceOsRelease()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5179
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5180
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$3200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5181
    return-object p0
.end method

.method public clearDeviceOsVersion()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5054
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5055
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$2700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5056
    return-object p0
.end method

.method public clearDeviceOsVersionCode()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5117
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5118
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$3000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5119
    return-object p0
.end method

.method public clearDeviceSoftwarePackage()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5456
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5457
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$4300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5458
    return-object p0
.end method

.method public clearDeviceSoftwareVersion()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5331
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5332
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$3800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5333
    return-object p0
.end method

.method public clearDeviceSoftwareVersionCode()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5394
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5395
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$4100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5396
    return-object p0
.end method

.method public clearDeviceType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5726
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5727
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$5500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5728
    return-object p0
.end method

.method public clearEnabledSoftwareFeatures()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 6396
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6397
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$8500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 6398
    return-object p0
.end method

.method public clearEnrollmentSessionId()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 6441
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6442
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$8700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 6443
    return-object p0
.end method

.method public clearGcmRegistrationId()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 4496
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4497
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 4498
    return-object p0
.end method

.method public clearIsScreenlockStateFlaky()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 6229
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6230
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$7700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 6231
    return-object p0
.end method

.method public clearKeyHandle()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 4947
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4948
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$2300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 4949
    return-object p0
.end method

.method public clearLocale()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 4889
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4890
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$2000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 4891
    return-object p0
.end method

.method public clearLongDeviceId()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5605
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5606
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$5000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5607
    return-object p0
.end method

.method public clearMobileDataSupported()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5996
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5997
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$6700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5998
    return-object p0
.end method

.method public clearNotificationEnabled()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 4586
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4587
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 4588
    return-object p0
.end method

.method public clearOauthToken()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 6498
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6499
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$8900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 6500
    return-object p0
.end method

.method public clearPixelExperience()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 6131
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6132
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$7300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 6133
    return-object p0
.end method

.method public clearSupportedSoftwareFeatures()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 6309
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6310
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$8100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 6311
    return-object p0
.end method

.method public clearTetheringSupported()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 6041
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6042
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$6900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 6043
    return-object p0
.end method

.method public clearUserPublicKey()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 4756
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4757
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$1500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 4758
    return-object p0
.end method

.method public clearUsingSecureScreenlock()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 5771
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5772
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$5700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V

    .line 5773
    return-object p0
.end method

.method public getAndroidDeviceId()J
    .locals 2

    .line 4425
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getAndroidDeviceId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getApnRegistrationId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4519
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getApnRegistrationId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getArcPlusPlus()Z
    .locals 1

    .line 6154
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getArcPlusPlus()Z

    move-result v0

    return v0
.end method

.method public getAutoUnlockScreenlockEnabled()Z
    .locals 1

    .line 5839
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getAutoUnlockScreenlockEnabled()Z

    move-result v0

    return v0
.end method

.method public getAutoUnlockScreenlockSupported()Z
    .locals 1

    .line 5794
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getAutoUnlockScreenlockSupported()Z

    move-result v0

    return v0
.end method

.method public getBleRadioSupported()Z
    .locals 1

    .line 6064
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getBleRadioSupported()Z

    move-result v0

    return v0
.end method

.method public getBluetoothMacAddress()Ljava/lang/String;
    .locals 1

    .line 4611
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getBluetoothMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothMacAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4623
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getBluetoothMacAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothRadioEnabled()Z
    .locals 1

    .line 5929
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getBluetoothRadioEnabled()Z

    move-result v0

    return v0
.end method

.method public getBluetoothRadioSupported()Z
    .locals 1

    .line 5884
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getBluetoothRadioSupported()Z

    move-result v0

    return v0
.end method

.method public getCounter()J
    .locals 2

    .line 4970
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getCounter()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceAuthzenVersion()I
    .locals 1

    .line 5538
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceAuthzenVersion()I

    move-result v0

    return v0
.end method

.method public getDeviceDisplayDiagonalMils()I
    .locals 1

    .line 5493
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceDisplayDiagonalMils()I

    move-result v0

    return v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .line 5630
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceManufacturerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5642
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceManufacturerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceMasterKeyHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4687
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceMasterKeyHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 4781
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4793
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOsCodename()Ljava/lang/String;
    .locals 1

    .line 5218
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsCodename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOsCodenameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5230
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsCodenameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOsRelease()Ljava/lang/String;
    .locals 1

    .line 5142
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsRelease()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOsReleaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5154
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsReleaseBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 1

    .line 5017
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOsVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5029
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOsVersionCode()J
    .locals 2

    .line 5093
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceSoftwarePackage()Ljava/lang/String;
    .locals 1

    .line 5419
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceSoftwarePackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwarePackageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5431
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceSoftwarePackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 5294
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5306
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceSoftwareVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersionCode()J
    .locals 2

    .line 5370
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceSoftwareVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    .locals 1

    .line 5704
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledSoftwareFeatures(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    .locals 1
    .param p1, "index"    # I

    .line 6345
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getEnabledSoftwareFeatures(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledSoftwareFeaturesCount()I
    .locals 1

    .line 6334
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getEnabledSoftwareFeaturesCount()I

    move-result v0

    return v0
.end method

.method public getEnabledSoftwareFeaturesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;"
        }
    .end annotation

    .line 6323
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getEnabledSoftwareFeaturesList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrollmentSessionId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6419
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getEnrollmentSessionId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGcmRegistrationId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4474
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getGcmRegistrationId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIsScreenlockStateFlaky()Z
    .locals 1

    .line 6203
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getIsScreenlockStateFlaky()Z

    move-result v0

    return v0
.end method

.method public getKeyHandle()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4925
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getKeyHandle()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 4855
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4866
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLongDeviceId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5583
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getLongDeviceId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMobileDataSupported()Z
    .locals 1

    .line 5974
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getMobileDataSupported()Z

    move-result v0

    return v0
.end method

.method public getNotificationEnabled()Z
    .locals 1

    .line 4564
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getNotificationEnabled()Z

    move-result v0

    return v0
.end method

.method public getOauthToken()Ljava/lang/String;
    .locals 1

    .line 6464
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getOauthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOauthTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6475
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getOauthTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPixelExperience()Z
    .locals 1

    .line 6109
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getPixelExperience()Z

    move-result v0

    return v0
.end method

.method public getSupportedSoftwareFeatures(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    .locals 1
    .param p1, "index"    # I

    .line 6262
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getSupportedSoftwareFeatures(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSoftwareFeaturesCount()I
    .locals 1

    .line 6252
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getSupportedSoftwareFeaturesCount()I

    move-result v0

    return v0
.end method

.method public getSupportedSoftwareFeaturesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;"
        }
    .end annotation

    .line 6242
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getSupportedSoftwareFeaturesList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringSupported()Z
    .locals 1

    .line 6019
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getTetheringSupported()Z

    move-result v0

    return v0
.end method

.method public getUserPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4734
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getUserPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUsingSecureScreenlock()Z
    .locals 1

    .line 5749
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getUsingSecureScreenlock()Z

    move-result v0

    return v0
.end method

.method public hasAndroidDeviceId()Z
    .locals 1

    .line 4413
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasAndroidDeviceId()Z

    move-result v0

    return v0
.end method

.method public hasApnRegistrationId()Z
    .locals 1

    .line 4509
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasApnRegistrationId()Z

    move-result v0

    return v0
.end method

.method public hasArcPlusPlus()Z
    .locals 1

    .line 6144
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasArcPlusPlus()Z

    move-result v0

    return v0
.end method

.method public hasAutoUnlockScreenlockEnabled()Z
    .locals 1

    .line 5829
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasAutoUnlockScreenlockEnabled()Z

    move-result v0

    return v0
.end method

.method public hasAutoUnlockScreenlockSupported()Z
    .locals 1

    .line 5784
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasAutoUnlockScreenlockSupported()Z

    move-result v0

    return v0
.end method

.method public hasBleRadioSupported()Z
    .locals 1

    .line 6054
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasBleRadioSupported()Z

    move-result v0

    return v0
.end method

.method public hasBluetoothMacAddress()Z
    .locals 1

    .line 4600
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasBluetoothMacAddress()Z

    move-result v0

    return v0
.end method

.method public hasBluetoothRadioEnabled()Z
    .locals 1

    .line 5919
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasBluetoothRadioEnabled()Z

    move-result v0

    return v0
.end method

.method public hasBluetoothRadioSupported()Z
    .locals 1

    .line 5874
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasBluetoothRadioSupported()Z

    move-result v0

    return v0
.end method

.method public hasCounter()Z
    .locals 1

    .line 4960
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasCounter()Z

    move-result v0

    return v0
.end method

.method public hasDeviceAuthzenVersion()Z
    .locals 1

    .line 5528
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceAuthzenVersion()Z

    move-result v0

    return v0
.end method

.method public hasDeviceDisplayDiagonalMils()Z
    .locals 1

    .line 5483
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceDisplayDiagonalMils()Z

    move-result v0

    return v0
.end method

.method public hasDeviceManufacturer()Z
    .locals 1

    .line 5619
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceManufacturer()Z

    move-result v0

    return v0
.end method

.method public hasDeviceMasterKeyHash()Z
    .locals 1

    .line 4676
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceMasterKeyHash()Z

    move-result v0

    return v0
.end method

.method public hasDeviceModel()Z
    .locals 1

    .line 4770
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceModel()Z

    move-result v0

    return v0
.end method

.method public hasDeviceOsCodename()Z
    .locals 1

    .line 5207
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceOsCodename()Z

    move-result v0

    return v0
.end method

.method public hasDeviceOsRelease()Z
    .locals 1

    .line 5131
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceOsRelease()Z

    move-result v0

    return v0
.end method

.method public hasDeviceOsVersion()Z
    .locals 1

    .line 5006
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceOsVersion()Z

    move-result v0

    return v0
.end method

.method public hasDeviceOsVersionCode()Z
    .locals 1

    .line 5082
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceOsVersionCode()Z

    move-result v0

    return v0
.end method

.method public hasDeviceSoftwarePackage()Z
    .locals 1

    .line 5408
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceSoftwarePackage()Z

    move-result v0

    return v0
.end method

.method public hasDeviceSoftwareVersion()Z
    .locals 1

    .line 5283
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceSoftwareVersion()Z

    move-result v0

    return v0
.end method

.method public hasDeviceSoftwareVersionCode()Z
    .locals 1

    .line 5359
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceSoftwareVersionCode()Z

    move-result v0

    return v0
.end method

.method public hasDeviceType()Z
    .locals 1

    .line 5694
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceType()Z

    move-result v0

    return v0
.end method

.method public hasEnrollmentSessionId()Z
    .locals 1

    .line 6409
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasEnrollmentSessionId()Z

    move-result v0

    return v0
.end method

.method public hasGcmRegistrationId()Z
    .locals 1

    .line 4464
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasGcmRegistrationId()Z

    move-result v0

    return v0
.end method

.method public hasIsScreenlockStateFlaky()Z
    .locals 1

    .line 6191
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasIsScreenlockStateFlaky()Z

    move-result v0

    return v0
.end method

.method public hasKeyHandle()Z
    .locals 1

    .line 4915
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasKeyHandle()Z

    move-result v0

    return v0
.end method

.method public hasLocale()Z
    .locals 1

    .line 4845
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasLocale()Z

    move-result v0

    return v0
.end method

.method public hasLongDeviceId()Z
    .locals 1

    .line 5573
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasLongDeviceId()Z

    move-result v0

    return v0
.end method

.method public hasMobileDataSupported()Z
    .locals 1

    .line 5964
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasMobileDataSupported()Z

    move-result v0

    return v0
.end method

.method public hasNotificationEnabled()Z
    .locals 1

    .line 4554
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasNotificationEnabled()Z

    move-result v0

    return v0
.end method

.method public hasOauthToken()Z
    .locals 1

    .line 6454
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasOauthToken()Z

    move-result v0

    return v0
.end method

.method public hasPixelExperience()Z
    .locals 1

    .line 6099
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasPixelExperience()Z

    move-result v0

    return v0
.end method

.method public hasTetheringSupported()Z
    .locals 1

    .line 6009
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasTetheringSupported()Z

    move-result v0

    return v0
.end method

.method public hasUserPublicKey()Z
    .locals 1

    .line 4724
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasUserPublicKey()Z

    move-result v0

    return v0
.end method

.method public hasUsingSecureScreenlock()Z
    .locals 1

    .line 5739
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasUsingSecureScreenlock()Z

    move-result v0

    return v0
.end method

.method public setAndroidDeviceId(J)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 4437
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4438
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;J)V

    .line 4439
    return-object p0
.end method

.method public setApnRegistrationId(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4529
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4530
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 4531
    return-object p0
.end method

.method public setArcPlusPlus(Z)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 6164
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6165
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$7400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V

    .line 6166
    return-object p0
.end method

.method public setAutoUnlockScreenlockEnabled(Z)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 5849
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5850
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$6000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V

    .line 5851
    return-object p0
.end method

.method public setAutoUnlockScreenlockSupported(Z)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 5804
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5805
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$5800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V

    .line 5806
    return-object p0
.end method

.method public setBleRadioSupported(Z)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 6074
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6075
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$7000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V

    .line 6076
    return-object p0
.end method

.method public setBluetoothMacAddress(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4635
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4636
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V

    .line 4637
    return-object p0
.end method

.method public setBluetoothMacAddressBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4662
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4663
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$1100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 4664
    return-object p0
.end method

.method public setBluetoothRadioEnabled(Z)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 5939
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5940
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$6400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V

    .line 5941
    return-object p0
.end method

.method public setBluetoothRadioSupported(Z)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 5894
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5895
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$6200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V

    .line 5896
    return-object p0
.end method

.method public setCounter(J)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 4980
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4981
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$2400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;J)V

    .line 4982
    return-object p0
.end method

.method public setDeviceAuthzenVersion(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 5548
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5549
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$4700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;I)V

    .line 5550
    return-object p0
.end method

.method public setDeviceDisplayDiagonalMils(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 5503
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5504
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$4500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;I)V

    .line 5505
    return-object p0
.end method

.method public setDeviceManufacturer(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5654
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5655
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$5100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V

    .line 5656
    return-object p0
.end method

.method public setDeviceManufacturerBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5681
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5682
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$5300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 5683
    return-object p0
.end method

.method public setDeviceMasterKeyHash(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4698
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4699
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$1200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 4700
    return-object p0
.end method

.method public setDeviceModel(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4805
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4806
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$1600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V

    .line 4807
    return-object p0
.end method

.method public setDeviceModelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4832
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4833
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$1800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 4834
    return-object p0
.end method

.method public setDeviceOsCodename(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5242
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5243
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$3400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V

    .line 5244
    return-object p0
.end method

.method public setDeviceOsCodenameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5269
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5270
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$3600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 5271
    return-object p0
.end method

.method public setDeviceOsRelease(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5166
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5167
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$3100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V

    .line 5168
    return-object p0
.end method

.method public setDeviceOsReleaseBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5193
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5194
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$3300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 5195
    return-object p0
.end method

.method public setDeviceOsVersion(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5041
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5042
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$2600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V

    .line 5043
    return-object p0
.end method

.method public setDeviceOsVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5068
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5069
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$2800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 5070
    return-object p0
.end method

.method public setDeviceOsVersionCode(J)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 5104
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5105
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$2900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;J)V

    .line 5106
    return-object p0
.end method

.method public setDeviceSoftwarePackage(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5443
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5444
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$4200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V

    .line 5445
    return-object p0
.end method

.method public setDeviceSoftwarePackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5470
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5471
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$4400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 5472
    return-object p0
.end method

.method public setDeviceSoftwareVersion(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5318
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5319
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$3700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V

    .line 5320
    return-object p0
.end method

.method public setDeviceSoftwareVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5345
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5346
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$3900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 5347
    return-object p0
.end method

.method public setDeviceSoftwareVersionCode(J)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 5381
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5382
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$4000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;J)V

    .line 5383
    return-object p0
.end method

.method public setDeviceType(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    .line 5714
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5715
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$5400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;)V

    .line 5716
    return-object p0
.end method

.method public setEnabledSoftwareFeatures(ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 6357
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6358
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$8200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V

    .line 6359
    return-object p0
.end method

.method public setEnrollmentSessionId(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 6429
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6430
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$8600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 6431
    return-object p0
.end method

.method public setGcmRegistrationId(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4484
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4485
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 4486
    return-object p0
.end method

.method public setIsScreenlockStateFlaky(Z)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 6215
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6216
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$7600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V

    .line 6217
    return-object p0
.end method

.method public setKeyHandle(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4935
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4936
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$2200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 4937
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4877
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4878
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$1900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V

    .line 4879
    return-object p0
.end method

.method public setLocaleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4902
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4903
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$2100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 4904
    return-object p0
.end method

.method public setLongDeviceId(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5593
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5594
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$4900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 5595
    return-object p0
.end method

.method public setMobileDataSupported(Z)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 5984
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5985
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$6600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V

    .line 5986
    return-object p0
.end method

.method public setNotificationEnabled(Z)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 4574
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4575
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V

    .line 4576
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 6486
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6487
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$8800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V

    .line 6488
    return-object p0
.end method

.method public setOauthTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 6511
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6512
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$9000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 6513
    return-object p0
.end method

.method public setPixelExperience(Z)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 6119
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6120
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$7200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V

    .line 6121
    return-object p0
.end method

.method public setSupportedSoftwareFeatures(ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 6273
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6274
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$7800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V

    .line 6275
    return-object p0
.end method

.method public setTetheringSupported(Z)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 6029
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 6030
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$6800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V

    .line 6031
    return-object p0
.end method

.method public setUserPublicKey(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4744
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 4745
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$1400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V

    .line 4746
    return-object p0
.end method

.method public setUsingSecureScreenlock(Z)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 5759
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->copyOnWrite()V

    .line 5760
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->access$5600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V

    .line 5761
    return-object p0
.end method
