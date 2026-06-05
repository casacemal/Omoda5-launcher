.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureGcmProximityAuthProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallbackOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallbackOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1290
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->access$1200()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1291
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$1;

    .line 1283
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCallbackBluetoothAddress()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;
    .locals 1

    .line 1351
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->copyOnWrite()V

    .line 1352
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->access$1400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;)V

    .line 1353
    return-object p0
.end method

.method public clearProtocolVersion()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;
    .locals 1

    .line 1455
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->copyOnWrite()V

    .line 1456
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->access$1900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;)V

    .line 1457
    return-object p0
.end method

.method public clearSourceDeviceType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->copyOnWrite()V

    .line 1411
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->access$1700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;)V

    .line 1412
    return-object p0
.end method

.method public getCallbackBluetoothAddress()Ljava/lang/String;
    .locals 1

    .line 1314
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->getCallbackBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallbackBluetoothAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->getCallbackBluetoothAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 1433
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->getProtocolVersion()I

    move-result v0

    return v0
.end method

.method public getSourceDeviceType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    .locals 1

    .line 1388
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->getSourceDeviceType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public hasCallbackBluetoothAddress()Z
    .locals 1

    .line 1303
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->hasCallbackBluetoothAddress()Z

    move-result v0

    return v0
.end method

.method public hasProtocolVersion()Z
    .locals 1

    .line 1423
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->hasProtocolVersion()Z

    move-result v0

    return v0
.end method

.method public hasSourceDeviceType()Z
    .locals 1

    .line 1378
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->hasSourceDeviceType()Z

    move-result v0

    return v0
.end method

.method public setCallbackBluetoothAddress(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1338
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->copyOnWrite()V

    .line 1339
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->access$1300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;Ljava/lang/String;)V

    .line 1340
    return-object p0
.end method

.method public setCallbackBluetoothAddressBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1365
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->copyOnWrite()V

    .line 1366
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->access$1500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;Lcom/google/protobuf/ByteString;)V

    .line 1367
    return-object p0
.end method

.method public setProtocolVersion(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1443
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->copyOnWrite()V

    .line 1444
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->access$1800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;I)V

    .line 1445
    return-object p0
.end method

.method public setSourceDeviceType(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    .line 1398
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->copyOnWrite()V

    .line 1399
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;->access$1600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallback;Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;)V

    .line 1400
    return-object p0
.end method
