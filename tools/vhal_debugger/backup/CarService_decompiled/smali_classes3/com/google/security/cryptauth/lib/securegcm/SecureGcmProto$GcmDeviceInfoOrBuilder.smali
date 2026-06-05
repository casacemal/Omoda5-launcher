.class public interface abstract Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfoOrBuilder;
.super Ljava/lang/Object;
.source "SecureGcmProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GcmDeviceInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getAndroidDeviceId()J
.end method

.method public abstract getApnRegistrationId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getArcPlusPlus()Z
.end method

.method public abstract getAutoUnlockScreenlockEnabled()Z
.end method

.method public abstract getAutoUnlockScreenlockSupported()Z
.end method

.method public abstract getBleRadioSupported()Z
.end method

.method public abstract getBluetoothMacAddress()Ljava/lang/String;
.end method

.method public abstract getBluetoothMacAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getBluetoothRadioEnabled()Z
.end method

.method public abstract getBluetoothRadioSupported()Z
.end method

.method public abstract getCounter()J
.end method

.method public abstract getDeviceAuthzenVersion()I
.end method

.method public abstract getDeviceDisplayDiagonalMils()I
.end method

.method public abstract getDeviceManufacturer()Ljava/lang/String;
.end method

.method public abstract getDeviceManufacturerBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDeviceMasterKeyHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getDeviceModelBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDeviceOsCodename()Ljava/lang/String;
.end method

.method public abstract getDeviceOsCodenameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDeviceOsRelease()Ljava/lang/String;
.end method

.method public abstract getDeviceOsReleaseBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDeviceOsVersion()Ljava/lang/String;
.end method

.method public abstract getDeviceOsVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDeviceOsVersionCode()J
.end method

.method public abstract getDeviceSoftwarePackage()Ljava/lang/String;
.end method

.method public abstract getDeviceSoftwarePackageBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDeviceSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getDeviceSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDeviceSoftwareVersionCode()J
.end method

.method public abstract getDeviceType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
.end method

.method public abstract getEnabledSoftwareFeatures(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
.end method

.method public abstract getEnabledSoftwareFeaturesCount()I
.end method

.method public abstract getEnabledSoftwareFeaturesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnrollmentSessionId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGcmRegistrationId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getIsScreenlockStateFlaky()Z
.end method

.method public abstract getKeyHandle()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLocale()Ljava/lang/String;
.end method

.method public abstract getLocaleBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLongDeviceId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMobileDataSupported()Z
.end method

.method public abstract getNotificationEnabled()Z
.end method

.method public abstract getOauthToken()Ljava/lang/String;
.end method

.method public abstract getOauthTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPixelExperience()Z
.end method

.method public abstract getSupportedSoftwareFeatures(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
.end method

.method public abstract getSupportedSoftwareFeaturesCount()I
.end method

.method public abstract getSupportedSoftwareFeaturesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTetheringSupported()Z
.end method

.method public abstract getUserPublicKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUsingSecureScreenlock()Z
.end method

.method public abstract hasAndroidDeviceId()Z
.end method

.method public abstract hasApnRegistrationId()Z
.end method

.method public abstract hasArcPlusPlus()Z
.end method

.method public abstract hasAutoUnlockScreenlockEnabled()Z
.end method

.method public abstract hasAutoUnlockScreenlockSupported()Z
.end method

.method public abstract hasBleRadioSupported()Z
.end method

.method public abstract hasBluetoothMacAddress()Z
.end method

.method public abstract hasBluetoothRadioEnabled()Z
.end method

.method public abstract hasBluetoothRadioSupported()Z
.end method

.method public abstract hasCounter()Z
.end method

.method public abstract hasDeviceAuthzenVersion()Z
.end method

.method public abstract hasDeviceDisplayDiagonalMils()Z
.end method

.method public abstract hasDeviceManufacturer()Z
.end method

.method public abstract hasDeviceMasterKeyHash()Z
.end method

.method public abstract hasDeviceModel()Z
.end method

.method public abstract hasDeviceOsCodename()Z
.end method

.method public abstract hasDeviceOsRelease()Z
.end method

.method public abstract hasDeviceOsVersion()Z
.end method

.method public abstract hasDeviceOsVersionCode()Z
.end method

.method public abstract hasDeviceSoftwarePackage()Z
.end method

.method public abstract hasDeviceSoftwareVersion()Z
.end method

.method public abstract hasDeviceSoftwareVersionCode()Z
.end method

.method public abstract hasDeviceType()Z
.end method

.method public abstract hasEnrollmentSessionId()Z
.end method

.method public abstract hasGcmRegistrationId()Z
.end method

.method public abstract hasIsScreenlockStateFlaky()Z
.end method

.method public abstract hasKeyHandle()Z
.end method

.method public abstract hasLocale()Z
.end method

.method public abstract hasLongDeviceId()Z
.end method

.method public abstract hasMobileDataSupported()Z
.end method

.method public abstract hasNotificationEnabled()Z
.end method

.method public abstract hasOauthToken()Z
.end method

.method public abstract hasPixelExperience()Z
.end method

.method public abstract hasTetheringSupported()Z
.end method

.method public abstract hasUserPublicKey()Z
.end method

.method public abstract hasUsingSecureScreenlock()Z
.end method
