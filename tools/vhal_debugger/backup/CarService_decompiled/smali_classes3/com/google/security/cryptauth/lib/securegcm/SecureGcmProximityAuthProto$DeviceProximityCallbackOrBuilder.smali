.class public interface abstract Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto$DeviceProximityCallbackOrBuilder;
.super Ljava/lang/Object;
.source "SecureGcmProximityAuthProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProximityAuthProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceProximityCallbackOrBuilder"
.end annotation


# virtual methods
.method public abstract getCallbackBluetoothAddress()Ljava/lang/String;
.end method

.method public abstract getCallbackBluetoothAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getProtocolVersion()I
.end method

.method public abstract getSourceDeviceType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
.end method

.method public abstract hasCallbackBluetoothAddress()Z
.end method

.method public abstract hasProtocolVersion()Z
.end method

.method public abstract hasSourceDeviceType()Z
.end method
