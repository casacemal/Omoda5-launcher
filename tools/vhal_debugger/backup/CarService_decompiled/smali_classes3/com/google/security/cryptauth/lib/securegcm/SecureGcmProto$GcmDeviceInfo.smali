.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SecureGcmProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GcmDeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ANDROID_DEVICE_ID_FIELD_NUMBER:I = 0x1

.field public static final APN_REGISTRATION_ID_FIELD_NUMBER:I = 0xca

.field public static final ARC_PLUS_PLUS_FIELD_NUMBER:I = 0x199

.field public static final AUTO_UNLOCK_SCREENLOCK_ENABLED_FIELD_NUMBER:I = 0x192

.field public static final AUTO_UNLOCK_SCREENLOCK_SUPPORTED_FIELD_NUMBER:I = 0x191

.field public static final BLE_RADIO_SUPPORTED_FIELD_NUMBER:I = 0x197

.field public static final BLUETOOTH_MAC_ADDRESS_FIELD_NUMBER:I = 0x12e

.field public static final BLUETOOTH_RADIO_ENABLED_FIELD_NUMBER:I = 0x194

.field public static final BLUETOOTH_RADIO_SUPPORTED_FIELD_NUMBER:I = 0x193

.field public static final COUNTER_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

.field public static final DEVICE_AUTHZEN_VERSION_FIELD_NUMBER:I = 0x18

.field public static final DEVICE_DISPLAY_DIAGONAL_MILS_FIELD_NUMBER:I = 0x16

.field public static final DEVICE_MANUFACTURER_FIELD_NUMBER:I = 0x1f

.field public static final DEVICE_MASTER_KEY_HASH_FIELD_NUMBER:I = 0x67

.field public static final DEVICE_MODEL_FIELD_NUMBER:I = 0x7

.field public static final DEVICE_OS_CODENAME_FIELD_NUMBER:I = 0x10

.field public static final DEVICE_OS_RELEASE_FIELD_NUMBER:I = 0xf

.field public static final DEVICE_OS_VERSION_CODE_FIELD_NUMBER:I = 0xe

.field public static final DEVICE_OS_VERSION_FIELD_NUMBER:I = 0xd

.field public static final DEVICE_SOFTWARE_PACKAGE_FIELD_NUMBER:I = 0x13

.field public static final DEVICE_SOFTWARE_VERSION_CODE_FIELD_NUMBER:I = 0x12

.field public static final DEVICE_SOFTWARE_VERSION_FIELD_NUMBER:I = 0x11

.field public static final DEVICE_TYPE_FIELD_NUMBER:I = 0x20

.field public static final ENABLED_SOFTWARE_FEATURES_FIELD_NUMBER:I = 0x19c

.field public static final ENROLLMENT_SESSION_ID_FIELD_NUMBER:I = 0x3e8

.field public static final GCM_REGISTRATION_ID_FIELD_NUMBER:I = 0x66

.field public static final IS_SCREENLOCK_STATE_FLAKY_FIELD_NUMBER:I = 0x19a

.field public static final KEY_HANDLE_FIELD_NUMBER:I = 0x9

.field public static final LOCALE_FIELD_NUMBER:I = 0x8

.field public static final LONG_DEVICE_ID_FIELD_NUMBER:I = 0x1d

.field public static final MOBILE_DATA_SUPPORTED_FIELD_NUMBER:I = 0x195

.field public static final NOTIFICATION_ENABLED_FIELD_NUMBER:I = 0xcb

.field public static final OAUTH_TOKEN_FIELD_NUMBER:I = 0x3e9

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIXEL_EXPERIENCE_FIELD_NUMBER:I = 0x198

.field public static final SUPPORTED_SOFTWARE_FEATURES_FIELD_NUMBER:I = 0x19b

.field public static final TETHERING_SUPPORTED_FIELD_NUMBER:I = 0x196

.field public static final USER_PUBLIC_KEY_FIELD_NUMBER:I = 0x4

.field public static final USING_SECURE_SCREENLOCK_FIELD_NUMBER:I = 0x190

.field private static final enabledSoftwareFeatures_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;"
        }
    .end annotation
.end field

.field private static final supportedSoftwareFeatures_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private androidDeviceId_:J

.field private apnRegistrationId_:Lcom/google/protobuf/ByteString;

.field private arcPlusPlus_:Z

.field private autoUnlockScreenlockEnabled_:Z

.field private autoUnlockScreenlockSupported_:Z

.field private bitField0_:I

.field private bitField1_:I

.field private bleRadioSupported_:Z

.field private bluetoothMacAddress_:Ljava/lang/String;

.field private bluetoothRadioEnabled_:Z

.field private bluetoothRadioSupported_:Z

.field private counter_:J

.field private deviceAuthzenVersion_:I

.field private deviceDisplayDiagonalMils_:I

.field private deviceManufacturer_:Ljava/lang/String;

.field private deviceMasterKeyHash_:Lcom/google/protobuf/ByteString;

.field private deviceModel_:Ljava/lang/String;

.field private deviceOsCodename_:Ljava/lang/String;

.field private deviceOsRelease_:Ljava/lang/String;

.field private deviceOsVersionCode_:J

.field private deviceOsVersion_:Ljava/lang/String;

.field private deviceSoftwarePackage_:Ljava/lang/String;

.field private deviceSoftwareVersionCode_:J

.field private deviceSoftwareVersion_:Ljava/lang/String;

.field private deviceType_:I

.field private enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

.field private enrollmentSessionId_:Lcom/google/protobuf/ByteString;

.field private gcmRegistrationId_:Lcom/google/protobuf/ByteString;

.field private isScreenlockStateFlaky_:Z

.field private keyHandle_:Lcom/google/protobuf/ByteString;

.field private locale_:Ljava/lang/String;

.field private longDeviceId_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private mobileDataSupported_:Z

.field private notificationEnabled_:Z

.field private oauthToken_:Ljava/lang/String;

.field private pixelExperience_:Z

.field private supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

.field private tetheringSupported_:Z

.field private userPublicKey_:Lcom/google/protobuf/ByteString;

.field private usingSecureScreenlock_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3693
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$1;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 3795
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$2;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$2;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 6981
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 6982
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->makeImmutable()V

    .line 6983
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 1750
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6518
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->memoizedIsInitialized:B

    .line 1751
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->androidDeviceId_:J

    .line 1752
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->gcmRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 1753
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->apnRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 1754
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->notificationEnabled_:Z

    .line 1755
    const-string v3, ""

    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothMacAddress_:Ljava/lang/String;

    .line 1756
    sget-object v4, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceMasterKeyHash_:Lcom/google/protobuf/ByteString;

    .line 1757
    sget-object v4, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->userPublicKey_:Lcom/google/protobuf/ByteString;

    .line 1758
    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceModel_:Ljava/lang/String;

    .line 1759
    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->locale_:Ljava/lang/String;

    .line 1760
    sget-object v4, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->keyHandle_:Lcom/google/protobuf/ByteString;

    .line 1761
    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->counter_:J

    .line 1762
    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersion_:Ljava/lang/String;

    .line 1763
    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersionCode_:J

    .line 1764
    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsRelease_:Ljava/lang/String;

    .line 1765
    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsCodename_:Ljava/lang/String;

    .line 1766
    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersion_:Ljava/lang/String;

    .line 1767
    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersionCode_:J

    .line 1768
    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwarePackage_:Ljava/lang/String;

    .line 1769
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceDisplayDiagonalMils_:I

    .line 1770
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceAuthzenVersion_:I

    .line 1771
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->longDeviceId_:Lcom/google/protobuf/ByteString;

    .line 1772
    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceManufacturer_:Ljava/lang/String;

    .line 1773
    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceType_:I

    .line 1774
    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->usingSecureScreenlock_:Z

    .line 1775
    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockSupported_:Z

    .line 1776
    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockEnabled_:Z

    .line 1777
    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioSupported_:Z

    .line 1778
    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioEnabled_:Z

    .line 1779
    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->mobileDataSupported_:Z

    .line 1780
    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->tetheringSupported_:Z

    .line 1781
    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bleRadioSupported_:Z

    .line 1782
    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->pixelExperience_:Z

    .line 1783
    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->arcPlusPlus_:Z

    .line 1784
    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->isScreenlockStateFlaky_:Z

    .line 1785
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 1786
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 1787
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enrollmentSessionId_:Lcom/google/protobuf/ByteString;

    .line 1788
    iput-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->oauthToken_:Ljava/lang/String;

    .line 1789
    return-void
.end method

.method static synthetic access$000()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .locals 1

    .line 1745
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # J

    .line 1745
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setAndroidDeviceId(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearBluetoothMacAddress()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setBluetoothMacAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceMasterKeyHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearDeviceMasterKeyHash()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setUserPublicKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearUserPublicKey()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceModel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearDeviceModel()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceModelBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setLocale(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearAndroidDeviceId()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearLocale()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setLocaleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setKeyHandle(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearKeyHandle()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # J

    .line 1745
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setCounter(J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearCounter()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceOsVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearDeviceOsVersion()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceOsVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # J

    .line 1745
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceOsVersionCode(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setGcmRegistrationId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearDeviceOsVersionCode()V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceOsRelease(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearDeviceOsRelease()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceOsReleaseBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceOsCodename(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearDeviceOsCodename()V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceOsCodenameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceSoftwareVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearDeviceSoftwareVersion()V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceSoftwareVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearGcmRegistrationId()V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # J

    .line 1745
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceSoftwareVersionCode(J)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearDeviceSoftwareVersionCode()V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceSoftwarePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearDeviceSoftwarePackage()V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceSoftwarePackageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # I

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceDisplayDiagonalMils(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearDeviceDisplayDiagonalMils()V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # I

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceAuthzenVersion(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearDeviceAuthzenVersion()V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setLongDeviceId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setApnRegistrationId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearLongDeviceId()V

    return-void
.end method

.method static synthetic access$5100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceManufacturer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearDeviceManufacturer()V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceManufacturerBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setDeviceType(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearDeviceType()V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Z

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setUsingSecureScreenlock(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearUsingSecureScreenlock()V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Z

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setAutoUnlockScreenlockSupported(Z)V

    return-void
.end method

.method static synthetic access$5900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearAutoUnlockScreenlockSupported()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearApnRegistrationId()V

    return-void
.end method

.method static synthetic access$6000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Z

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setAutoUnlockScreenlockEnabled(Z)V

    return-void
.end method

.method static synthetic access$6100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearAutoUnlockScreenlockEnabled()V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Z

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setBluetoothRadioSupported(Z)V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearBluetoothRadioSupported()V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Z

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setBluetoothRadioEnabled(Z)V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearBluetoothRadioEnabled()V

    return-void
.end method

.method static synthetic access$6600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Z

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setMobileDataSupported(Z)V

    return-void
.end method

.method static synthetic access$6700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearMobileDataSupported()V

    return-void
.end method

.method static synthetic access$6800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Z

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setTetheringSupported(Z)V

    return-void
.end method

.method static synthetic access$6900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearTetheringSupported()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Z

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setNotificationEnabled(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Z

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setBleRadioSupported(Z)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearBleRadioSupported()V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Z

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setPixelExperience(Z)V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearPixelExperience()V

    return-void
.end method

.method static synthetic access$7400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Z

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setArcPlusPlus(Z)V

    return-void
.end method

.method static synthetic access$7500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearArcPlusPlus()V

    return-void
.end method

.method static synthetic access$7600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Z

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setIsScreenlockStateFlaky(Z)V

    return-void
.end method

.method static synthetic access$7700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearIsScreenlockStateFlaky()V

    return-void
.end method

.method static synthetic access$7800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 1745
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setSupportedSoftwareFeatures(ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->addSupportedSoftwareFeatures(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearNotificationEnabled()V

    return-void
.end method

.method static synthetic access$8000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->addAllSupportedSoftwareFeatures(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearSupportedSoftwareFeatures()V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 1745
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setEnabledSoftwareFeatures(ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->addEnabledSoftwareFeatures(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->addAllEnabledSoftwareFeatures(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearEnabledSoftwareFeatures()V

    return-void
.end method

.method static synthetic access$8600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setEnrollmentSessionId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearEnrollmentSessionId()V

    return-void
.end method

.method static synthetic access$8800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setOauthToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 1745
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->clearOauthToken()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setBluetoothMacAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 1745
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->setOauthTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllEnabledSoftwareFeatures(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;)V"
        }
    .end annotation

    .line 3884
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;>;"
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->ensureEnabledSoftwareFeaturesIsMutable()V

    .line 3885
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 3886
    .local v1, "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->getNumber()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 3887
    .end local v1    # "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    goto :goto_0

    .line 3888
    :cond_0
    return-void
.end method

.method private addAllSupportedSoftwareFeatures(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;)V"
        }
    .end annotation

    .line 3776
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;>;"
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->ensureSupportedSoftwareFeaturesIsMutable()V

    .line 3777
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 3778
    .local v1, "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->getNumber()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 3779
    .end local v1    # "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    goto :goto_0

    .line 3780
    :cond_0
    return-void
.end method

.method private addEnabledSoftwareFeatures(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V
    .locals 2
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 3868
    if-eqz p1, :cond_0

    .line 3871
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->ensureEnabledSoftwareFeaturesIsMutable()V

    .line 3872
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->getNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 3873
    return-void

    .line 3869
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addSupportedSoftwareFeatures(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V
    .locals 2
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 3761
    if-eqz p1, :cond_0

    .line 3764
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->ensureSupportedSoftwareFeaturesIsMutable()V

    .line 3765
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->getNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 3766
    return-void

    .line 3762
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearAndroidDeviceId()V
    .locals 2

    .line 1841
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 1842
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->androidDeviceId_:J

    .line 1843
    return-void
.end method

.method private clearApnRegistrationId()V
    .locals 1

    .line 1937
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 1938
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getApnRegistrationId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->apnRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 1939
    return-void
.end method

.method private clearArcPlusPlus()V
    .locals 1

    .line 3633
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 3634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->arcPlusPlus_:Z

    .line 3635
    return-void
.end method

.method private clearAutoUnlockScreenlockEnabled()V
    .locals 2

    .line 3318
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockEnabled_:Z

    .line 3320
    return-void
.end method

.method private clearAutoUnlockScreenlockSupported()V
    .locals 2

    .line 3273
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockSupported_:Z

    .line 3275
    return-void
.end method

.method private clearBleRadioSupported()V
    .locals 2

    .line 3543
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bleRadioSupported_:Z

    .line 3545
    return-void
.end method

.method private clearBluetoothMacAddress()V
    .locals 1

    .line 2047
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2048
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getBluetoothMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothMacAddress_:Ljava/lang/String;

    .line 2049
    return-void
.end method

.method private clearBluetoothRadioEnabled()V
    .locals 2

    .line 3408
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioEnabled_:Z

    .line 3410
    return-void
.end method

.method private clearBluetoothRadioSupported()V
    .locals 2

    .line 3363
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioSupported_:Z

    .line 3365
    return-void
.end method

.method private clearCounter()V
    .locals 2

    .line 2412
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2413
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->counter_:J

    .line 2414
    return-void
.end method

.method private clearDeviceAuthzenVersion()V
    .locals 2

    .line 3005
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3006
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceAuthzenVersion_:I

    .line 3007
    return-void
.end method

.method private clearDeviceDisplayDiagonalMils()V
    .locals 2

    .line 2960
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2961
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceDisplayDiagonalMils_:I

    .line 2962
    return-void
.end method

.method private clearDeviceManufacturer()V
    .locals 2

    .line 3118
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3119
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceManufacturer_:Ljava/lang/String;

    .line 3120
    return-void
.end method

.method private clearDeviceMasterKeyHash()V
    .locals 1

    .line 2115
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2116
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceMasterKeyHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceMasterKeyHash_:Lcom/google/protobuf/ByteString;

    .line 2117
    return-void
.end method

.method private clearDeviceModel()V
    .locals 1

    .line 2228
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2229
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceModel_:Ljava/lang/String;

    .line 2230
    return-void
.end method

.method private clearDeviceOsCodename()V
    .locals 1

    .line 2688
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2689
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsCodename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsCodename_:Ljava/lang/String;

    .line 2690
    return-void
.end method

.method private clearDeviceOsRelease()V
    .locals 1

    .line 2607
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2608
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsRelease()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsRelease_:Ljava/lang/String;

    .line 2609
    return-void
.end method

.method private clearDeviceOsVersion()V
    .locals 1

    .line 2477
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2478
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersion_:Ljava/lang/String;

    .line 2479
    return-void
.end method

.method private clearDeviceOsVersionCode()V
    .locals 2

    .line 2542
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2543
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersionCode_:J

    .line 2544
    return-void
.end method

.method private clearDeviceSoftwarePackage()V
    .locals 2

    .line 2899
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2900
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceSoftwarePackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwarePackage_:Ljava/lang/String;

    .line 2901
    return-void
.end method

.method private clearDeviceSoftwareVersion()V
    .locals 2

    .line 2769
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2770
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersion_:Ljava/lang/String;

    .line 2771
    return-void
.end method

.method private clearDeviceSoftwareVersionCode()V
    .locals 2

    .line 2834
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2835
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersionCode_:J

    .line 2836
    return-void
.end method

.method private clearDeviceType()V
    .locals 2

    .line 3183
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3184
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceType_:I

    .line 3185
    return-void
.end method

.method private clearEnabledSoftwareFeatures()V
    .locals 1

    .line 3898
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 3899
    return-void
.end method

.method private clearEnrollmentSessionId()V
    .locals 1

    .line 3945
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 3946
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getEnrollmentSessionId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enrollmentSessionId_:Lcom/google/protobuf/ByteString;

    .line 3947
    return-void
.end method

.method private clearGcmRegistrationId()V
    .locals 1

    .line 1889
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 1890
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getGcmRegistrationId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->gcmRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 1891
    return-void
.end method

.method private clearIsScreenlockStateFlaky()V
    .locals 1

    .line 3686
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 3687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->isScreenlockStateFlaky_:Z

    .line 3688
    return-void
.end method

.method private clearKeyHandle()V
    .locals 1

    .line 2367
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2368
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getKeyHandle()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->keyHandle_:Lcom/google/protobuf/ByteString;

    .line 2369
    return-void
.end method

.method private clearLocale()V
    .locals 1

    .line 2304
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2305
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->locale_:Ljava/lang/String;

    .line 2306
    return-void
.end method

.method private clearLongDeviceId()V
    .locals 2

    .line 3053
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3054
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getLongDeviceId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->longDeviceId_:Lcom/google/protobuf/ByteString;

    .line 3055
    return-void
.end method

.method private clearMobileDataSupported()V
    .locals 2

    .line 3453
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->mobileDataSupported_:Z

    .line 3455
    return-void
.end method

.method private clearNotificationEnabled()V
    .locals 1

    .line 1982
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 1983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->notificationEnabled_:Z

    .line 1984
    return-void
.end method

.method private clearOauthToken()V
    .locals 1

    .line 4005
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 4006
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getOauthToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->oauthToken_:Ljava/lang/String;

    .line 4007
    return-void
.end method

.method private clearPixelExperience()V
    .locals 2

    .line 3588
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->pixelExperience_:Z

    .line 3590
    return-void
.end method

.method private clearSupportedSoftwareFeatures()V
    .locals 1

    .line 3789
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 3790
    return-void
.end method

.method private clearTetheringSupported()V
    .locals 2

    .line 3498
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->tetheringSupported_:Z

    .line 3500
    return-void
.end method

.method private clearUserPublicKey()V
    .locals 1

    .line 2163
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2164
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getUserPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->userPublicKey_:Lcom/google/protobuf/ByteString;

    .line 2165
    return-void
.end method

.method private clearUsingSecureScreenlock()V
    .locals 2

    .line 3228
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->usingSecureScreenlock_:Z

    .line 3230
    return-void
.end method

.method private ensureEnabledSoftwareFeaturesIsMutable()V
    .locals 1

    .line 3838
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3839
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 3840
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 3842
    :cond_0
    return-void
.end method

.method private ensureSupportedSoftwareFeaturesIsMutable()V
    .locals 1

    .line 3733
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3734
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 3735
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 3737
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .locals 1

    .line 6986
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1

    .line 4377
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 4380
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4354
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4360
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4318
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4325
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4365
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4372
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4342
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4349
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4330
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4337
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 6992
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAndroidDeviceId(J)V
    .locals 1
    .param p1, "value"    # J

    .line 1828
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 1829
    iput-wide p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->androidDeviceId_:J

    .line 1830
    return-void
.end method

.method private setApnRegistrationId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1923
    if-eqz p1, :cond_0

    .line 1926
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 1927
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->apnRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 1928
    return-void

    .line 1924
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setArcPlusPlus(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 3622
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 3623
    iput-boolean p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->arcPlusPlus_:Z

    .line 3624
    return-void
.end method

.method private setAutoUnlockScreenlockEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 3307
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3308
    iput-boolean p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockEnabled_:Z

    .line 3309
    return-void
.end method

.method private setAutoUnlockScreenlockSupported(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 3262
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3263
    iput-boolean p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockSupported_:Z

    .line 3264
    return-void
.end method

.method private setBleRadioSupported(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 3532
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3533
    iput-boolean p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bleRadioSupported_:Z

    .line 3534
    return-void
.end method

.method private setBluetoothMacAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2032
    if-eqz p1, :cond_0

    .line 2035
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2036
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothMacAddress_:Ljava/lang/String;

    .line 2037
    return-void

    .line 2033
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setBluetoothMacAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2060
    if-eqz p1, :cond_0

    .line 2063
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2064
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothMacAddress_:Ljava/lang/String;

    .line 2065
    return-void

    .line 2061
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setBluetoothRadioEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 3397
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3398
    iput-boolean p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioEnabled_:Z

    .line 3399
    return-void
.end method

.method private setBluetoothRadioSupported(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 3352
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3353
    iput-boolean p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioSupported_:Z

    .line 3354
    return-void
.end method

.method private setCounter(J)V
    .locals 1
    .param p1, "value"    # J

    .line 2401
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2402
    iput-wide p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->counter_:J

    .line 2403
    return-void
.end method

.method private setDeviceAuthzenVersion(I)V
    .locals 2
    .param p1, "value"    # I

    .line 2994
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2995
    iput p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceAuthzenVersion_:I

    .line 2996
    return-void
.end method

.method private setDeviceDisplayDiagonalMils(I)V
    .locals 2
    .param p1, "value"    # I

    .line 2949
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2950
    iput p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceDisplayDiagonalMils_:I

    .line 2951
    return-void
.end method

.method private setDeviceManufacturer(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 3103
    if-eqz p1, :cond_0

    .line 3106
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3107
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceManufacturer_:Ljava/lang/String;

    .line 3108
    return-void

    .line 3104
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceManufacturerBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3131
    if-eqz p1, :cond_0

    .line 3134
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3135
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceManufacturer_:Ljava/lang/String;

    .line 3136
    return-void

    .line 3132
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceMasterKeyHash(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2100
    if-eqz p1, :cond_0

    .line 2103
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2104
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceMasterKeyHash_:Lcom/google/protobuf/ByteString;

    .line 2105
    return-void

    .line 2101
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceModel(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2213
    if-eqz p1, :cond_0

    .line 2216
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2217
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceModel_:Ljava/lang/String;

    .line 2218
    return-void

    .line 2214
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceModelBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2241
    if-eqz p1, :cond_0

    .line 2244
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2245
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceModel_:Ljava/lang/String;

    .line 2246
    return-void

    .line 2242
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceOsCodename(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2673
    if-eqz p1, :cond_0

    .line 2676
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2677
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsCodename_:Ljava/lang/String;

    .line 2678
    return-void

    .line 2674
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceOsCodenameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2701
    if-eqz p1, :cond_0

    .line 2704
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2705
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsCodename_:Ljava/lang/String;

    .line 2706
    return-void

    .line 2702
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceOsRelease(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2592
    if-eqz p1, :cond_0

    .line 2595
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2596
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsRelease_:Ljava/lang/String;

    .line 2597
    return-void

    .line 2593
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceOsReleaseBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2620
    if-eqz p1, :cond_0

    .line 2623
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2624
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsRelease_:Ljava/lang/String;

    .line 2625
    return-void

    .line 2621
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceOsVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2462
    if-eqz p1, :cond_0

    .line 2465
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2466
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersion_:Ljava/lang/String;

    .line 2467
    return-void

    .line 2463
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceOsVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2490
    if-eqz p1, :cond_0

    .line 2493
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2494
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersion_:Ljava/lang/String;

    .line 2495
    return-void

    .line 2491
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceOsVersionCode(J)V
    .locals 1
    .param p1, "value"    # J

    .line 2530
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2531
    iput-wide p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersionCode_:J

    .line 2532
    return-void
.end method

.method private setDeviceSoftwarePackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 2884
    if-eqz p1, :cond_0

    .line 2887
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2888
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwarePackage_:Ljava/lang/String;

    .line 2889
    return-void

    .line 2885
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceSoftwarePackageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2912
    if-eqz p1, :cond_0

    .line 2915
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2916
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwarePackage_:Ljava/lang/String;

    .line 2917
    return-void

    .line 2913
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceSoftwareVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 2754
    if-eqz p1, :cond_0

    .line 2757
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2758
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersion_:Ljava/lang/String;

    .line 2759
    return-void

    .line 2755
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceSoftwareVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2782
    if-eqz p1, :cond_0

    .line 2785
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2786
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersion_:Ljava/lang/String;

    .line 2787
    return-void

    .line 2783
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDeviceSoftwareVersionCode(J)V
    .locals 2
    .param p1, "value"    # J

    .line 2822
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2823
    iput-wide p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersionCode_:J

    .line 2824
    return-void
.end method

.method private setDeviceType(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;)V
    .locals 2
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    .line 3169
    if-eqz p1, :cond_0

    .line 3172
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3173
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceType_:I

    .line 3174
    return-void

    .line 3170
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setEnabledSoftwareFeatures(ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 3853
    if-eqz p2, :cond_0

    .line 3856
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->ensureEnabledSoftwareFeaturesIsMutable()V

    .line 3857
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->getNumber()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 3858
    return-void

    .line 3854
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setEnrollmentSessionId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3931
    if-eqz p1, :cond_0

    .line 3934
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 3935
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enrollmentSessionId_:Lcom/google/protobuf/ByteString;

    .line 3936
    return-void

    .line 3932
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setGcmRegistrationId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1875
    if-eqz p1, :cond_0

    .line 1878
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 1879
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->gcmRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 1880
    return-void

    .line 1876
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setIsScreenlockStateFlaky(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 3673
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 3674
    iput-boolean p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->isScreenlockStateFlaky_:Z

    .line 3675
    return-void
.end method

.method private setKeyHandle(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2353
    if-eqz p1, :cond_0

    .line 2356
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2357
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->keyHandle_:Lcom/google/protobuf/ByteString;

    .line 2358
    return-void

    .line 2354
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setLocale(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2290
    if-eqz p1, :cond_0

    .line 2293
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2294
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->locale_:Ljava/lang/String;

    .line 2295
    return-void

    .line 2291
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setLocaleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2316
    if-eqz p1, :cond_0

    .line 2319
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2320
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->locale_:Ljava/lang/String;

    .line 2321
    return-void

    .line 2317
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setLongDeviceId(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3039
    if-eqz p1, :cond_0

    .line 3042
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3043
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->longDeviceId_:Lcom/google/protobuf/ByteString;

    .line 3044
    return-void

    .line 3040
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setMobileDataSupported(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 3442
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3443
    iput-boolean p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->mobileDataSupported_:Z

    .line 3444
    return-void
.end method

.method private setNotificationEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1971
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 1972
    iput-boolean p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->notificationEnabled_:Z

    .line 1973
    return-void
.end method

.method private setOauthToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3991
    if-eqz p1, :cond_0

    .line 3994
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 3995
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->oauthToken_:Ljava/lang/String;

    .line 3996
    return-void

    .line 3992
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setOauthTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4017
    if-eqz p1, :cond_0

    .line 4020
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 4021
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->oauthToken_:Ljava/lang/String;

    .line 4022
    return-void

    .line 4018
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPixelExperience(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 3577
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3578
    iput-boolean p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->pixelExperience_:Z

    .line 3579
    return-void
.end method

.method private setSupportedSoftwareFeatures(ILcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    .line 3747
    if-eqz p2, :cond_0

    .line 3750
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->ensureSupportedSoftwareFeaturesIsMutable()V

    .line 3751
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->getNumber()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 3752
    return-void

    .line 3748
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTetheringSupported(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 3487
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3488
    iput-boolean p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->tetheringSupported_:Z

    .line 3489
    return-void
.end method

.method private setUserPublicKey(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2149
    if-eqz p1, :cond_0

    .line 2152
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 2153
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->userPublicKey_:Lcom/google/protobuf/ByteString;

    .line 2154
    return-void

    .line 2150
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setUsingSecureScreenlock(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 3217
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 3218
    iput-boolean p1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->usingSecureScreenlock_:Z

    .line 3219
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 6522
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 6974
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 6965
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    monitor-enter v0

    .line 6966
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 6967
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 6969
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6971
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 6670
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 6672
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 6675
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v3, 0x0

    .line 6676
    .local v3, "done":Z
    :goto_1
    if-nez v3, :cond_e

    .line 6677
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 6678
    .local v4, "tag":I
    const/16 v5, 0x19c

    const/16 v6, 0x19b

    const/16 v7, 0x20

    sparse-switch v4, :sswitch_data_0

    .line 6683
    invoke-virtual {p0, v4, v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v5

    goto/16 :goto_6

    .line 6945
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 6946
    .local v5, "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 6947
    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->oauthToken_:Ljava/lang/String;

    .line 6948
    goto/16 :goto_7

    .line 6940
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_1
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 6941
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enrollmentSessionId_:Lcom/google/protobuf/ByteString;

    .line 6942
    goto/16 :goto_7

    .line 6921
    :sswitch_2
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v6}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v6

    if-nez v6, :cond_2

    .line 6922
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 6923
    invoke-static {v6}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 6925
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    .line 6926
    .local v6, "length":I
    invoke-virtual {v0, v6}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    .line 6927
    .local v7, "oldLimit":I
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 6928
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v8

    .line 6929
    .local v8, "rawValue":I
    invoke-static {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    move-result-object v9

    .line 6930
    .local v9, "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    if-nez v9, :cond_3

    .line 6931
    invoke-super {p0, v5, v8}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_3

    .line 6933
    :cond_3
    iget-object v10, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v10, v8}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 6935
    .end local v8    # "rawValue":I
    .end local v9    # "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    :goto_3
    goto :goto_2

    .line 6936
    :cond_4
    invoke-virtual {v0, v7}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 6937
    goto/16 :goto_7

    .line 6907
    .end local v6    # "length":I
    .end local v7    # "oldLimit":I
    :sswitch_3
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v6}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v6

    if-nez v6, :cond_5

    .line 6908
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 6909
    invoke-static {v6}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 6911
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 6912
    .local v6, "rawValue":I
    invoke-static {v6}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    move-result-object v7

    .line 6913
    .local v7, "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    if-nez v7, :cond_6

    .line 6914
    invoke-super {p0, v5, v6}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto/16 :goto_7

    .line 6916
    :cond_6
    iget-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v5, v6}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 6918
    goto/16 :goto_7

    .line 6888
    .end local v6    # "rawValue":I
    .end local v7    # "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    :sswitch_4
    iget-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v5

    if-nez v5, :cond_7

    .line 6889
    iget-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 6890
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 6892
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    .line 6893
    .local v5, "length":I
    invoke-virtual {v0, v5}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    .line 6894
    .local v7, "oldLimit":I
    :goto_4
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_9

    .line 6895
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v8

    .line 6896
    .restart local v8    # "rawValue":I
    invoke-static {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    move-result-object v9

    .line 6897
    .restart local v9    # "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    if-nez v9, :cond_8

    .line 6898
    invoke-super {p0, v6, v8}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_5

    .line 6900
    :cond_8
    iget-object v10, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v10, v8}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 6902
    .end local v8    # "rawValue":I
    .end local v9    # "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    :goto_5
    goto :goto_4

    .line 6903
    :cond_9
    invoke-virtual {v0, v7}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 6904
    goto/16 :goto_7

    .line 6874
    .end local v5    # "length":I
    .end local v7    # "oldLimit":I
    :sswitch_5
    iget-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v5

    if-nez v5, :cond_a

    .line 6875
    iget-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 6876
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 6878
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 6879
    .local v5, "rawValue":I
    invoke-static {v5}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    move-result-object v7

    .line 6880
    .local v7, "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    if-nez v7, :cond_b

    .line 6881
    invoke-super {p0, v6, v5}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto/16 :goto_7

    .line 6883
    :cond_b
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v6, v5}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 6885
    goto/16 :goto_7

    .line 6869
    .end local v5    # "rawValue":I
    .end local v7    # "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    :sswitch_6
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 6870
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->isScreenlockStateFlaky_:Z

    .line 6871
    goto/16 :goto_7

    .line 6864
    :sswitch_7
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 6865
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->arcPlusPlus_:Z

    .line 6866
    goto/16 :goto_7

    .line 6859
    :sswitch_8
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, -0x80000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6860
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->pixelExperience_:Z

    .line 6861
    goto/16 :goto_7

    .line 6854
    :sswitch_9
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6855
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bleRadioSupported_:Z

    .line 6856
    goto/16 :goto_7

    .line 6849
    :sswitch_a
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6850
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->tetheringSupported_:Z

    .line 6851
    goto/16 :goto_7

    .line 6844
    :sswitch_b
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6845
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->mobileDataSupported_:Z

    .line 6846
    goto/16 :goto_7

    .line 6839
    :sswitch_c
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6840
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioEnabled_:Z

    .line 6841
    goto/16 :goto_7

    .line 6834
    :sswitch_d
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x4000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6835
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioSupported_:Z

    .line 6836
    goto/16 :goto_7

    .line 6829
    :sswitch_e
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x2000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6830
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockEnabled_:Z

    .line 6831
    goto/16 :goto_7

    .line 6824
    :sswitch_f
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x1000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6825
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockSupported_:Z

    .line 6826
    goto/16 :goto_7

    .line 6819
    :sswitch_10
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6820
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->usingSecureScreenlock_:Z

    .line 6821
    goto/16 :goto_7

    .line 6813
    :sswitch_11
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 6814
    .local v5, "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6815
    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothMacAddress_:Ljava/lang/String;

    .line 6816
    goto/16 :goto_7

    .line 6808
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_12
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6809
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->notificationEnabled_:Z

    .line 6810
    goto/16 :goto_7

    .line 6803
    :sswitch_13
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6804
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->apnRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 6805
    goto/16 :goto_7

    .line 6798
    :sswitch_14
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/2addr v5, v7

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6799
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceMasterKeyHash_:Lcom/google/protobuf/ByteString;

    .line 6800
    goto/16 :goto_7

    .line 6793
    :sswitch_15
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6794
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->gcmRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 6795
    goto/16 :goto_7

    .line 6782
    :sswitch_16
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 6783
    .local v5, "rawValue":I
    invoke-static {v5}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    move-result-object v6

    .line 6784
    .local v6, "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    if-nez v6, :cond_c

    .line 6785
    invoke-super {p0, v7, v5}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto/16 :goto_7

    .line 6787
    :cond_c
    iget v7, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v8, 0x400000

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6788
    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceType_:I

    .line 6790
    goto/16 :goto_7

    .line 6776
    .end local v5    # "rawValue":I
    .end local v6    # "value":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    :sswitch_17
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 6777
    .local v5, "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v7, 0x200000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6778
    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceManufacturer_:Ljava/lang/String;

    .line 6779
    goto/16 :goto_7

    .line 6771
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_18
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6772
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->longDeviceId_:Lcom/google/protobuf/ByteString;

    .line 6773
    goto/16 :goto_7

    .line 6766
    :sswitch_19
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6767
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceAuthzenVersion_:I

    .line 6768
    goto/16 :goto_7

    .line 6761
    :sswitch_1a
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6762
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceDisplayDiagonalMils_:I

    .line 6763
    goto/16 :goto_7

    .line 6755
    :sswitch_1b
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 6756
    .restart local v5    # "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v7, 0x20000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6757
    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwarePackage_:Ljava/lang/String;

    .line 6758
    goto/16 :goto_7

    .line 6750
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_1c
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6751
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersionCode_:J

    .line 6752
    goto/16 :goto_7

    .line 6744
    :sswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 6745
    .restart local v5    # "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v7, 0x8000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6746
    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersion_:Ljava/lang/String;

    .line 6747
    goto/16 :goto_7

    .line 6738
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_1e
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 6739
    .restart local v5    # "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6740
    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsCodename_:Ljava/lang/String;

    .line 6741
    goto/16 :goto_7

    .line 6732
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_1f
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 6733
    .restart local v5    # "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6734
    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsRelease_:Ljava/lang/String;

    .line 6735
    goto/16 :goto_7

    .line 6727
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_20
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6728
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersionCode_:J

    .line 6729
    goto :goto_7

    .line 6721
    :sswitch_21
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 6722
    .restart local v5    # "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6723
    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersion_:Ljava/lang/String;

    .line 6724
    goto :goto_7

    .line 6716
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_22
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6717
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->counter_:J

    .line 6718
    goto :goto_7

    .line 6711
    :sswitch_23
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6712
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->keyHandle_:Lcom/google/protobuf/ByteString;

    .line 6713
    goto :goto_7

    .line 6705
    :sswitch_24
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 6706
    .restart local v5    # "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6707
    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->locale_:Ljava/lang/String;

    .line 6708
    goto :goto_7

    .line 6699
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_25
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 6700
    .restart local v5    # "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6701
    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceModel_:Ljava/lang/String;

    .line 6702
    goto :goto_7

    .line 6694
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_26
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6695
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->userPublicKey_:Lcom/google/protobuf/ByteString;

    .line 6696
    goto :goto_7

    .line 6689
    :sswitch_27
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6690
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->androidDeviceId_:J
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6691
    goto :goto_7

    .line 6680
    :sswitch_28
    const/4 v3, 0x1

    .line 6681
    goto :goto_7

    .line 6683
    :goto_6
    if-nez v5, :cond_d

    .line 6684
    const/4 v3, 0x1

    .line 6951
    .end local v4    # "tag":I
    :cond_d
    :goto_7
    goto/16 :goto_1

    .line 6958
    .end local v3    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_8

    .line 6954
    :catch_0
    move-exception v2

    .line 6955
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 6957
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 6952
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 6953
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6958
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_8
    throw v2

    .line 6959
    :cond_e
    nop

    .line 6962
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v0

    .line 6551
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 6552
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v8, p3

    check-cast v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    .line 6553
    .local v8, "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    nop

    .line 6554
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasAndroidDeviceId()Z

    move-result v2

    iget-wide v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->androidDeviceId_:J

    .line 6555
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasAndroidDeviceId()Z

    move-result v5

    iget-wide v6, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->androidDeviceId_:J

    .line 6553
    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->androidDeviceId_:J

    .line 6556
    nop

    .line 6557
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasGcmRegistrationId()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->gcmRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 6558
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasGcmRegistrationId()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->gcmRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 6556
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->gcmRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 6559
    nop

    .line 6560
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasApnRegistrationId()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->apnRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 6561
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasApnRegistrationId()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->apnRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 6559
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->apnRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 6562
    nop

    .line 6563
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasNotificationEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->notificationEnabled_:Z

    .line 6564
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasNotificationEnabled()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->notificationEnabled_:Z

    .line 6562
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->notificationEnabled_:Z

    .line 6565
    nop

    .line 6566
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasBluetoothMacAddress()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothMacAddress_:Ljava/lang/String;

    .line 6567
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasBluetoothMacAddress()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothMacAddress_:Ljava/lang/String;

    .line 6565
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothMacAddress_:Ljava/lang/String;

    .line 6568
    nop

    .line 6569
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceMasterKeyHash()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceMasterKeyHash_:Lcom/google/protobuf/ByteString;

    .line 6570
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceMasterKeyHash()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceMasterKeyHash_:Lcom/google/protobuf/ByteString;

    .line 6568
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceMasterKeyHash_:Lcom/google/protobuf/ByteString;

    .line 6571
    nop

    .line 6572
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasUserPublicKey()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->userPublicKey_:Lcom/google/protobuf/ByteString;

    .line 6573
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasUserPublicKey()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->userPublicKey_:Lcom/google/protobuf/ByteString;

    .line 6571
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->userPublicKey_:Lcom/google/protobuf/ByteString;

    .line 6574
    nop

    .line 6575
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceModel()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceModel_:Ljava/lang/String;

    .line 6576
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceModel()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceModel_:Ljava/lang/String;

    .line 6574
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceModel_:Ljava/lang/String;

    .line 6577
    nop

    .line 6578
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasLocale()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->locale_:Ljava/lang/String;

    .line 6579
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasLocale()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->locale_:Ljava/lang/String;

    .line 6577
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->locale_:Ljava/lang/String;

    .line 6580
    nop

    .line 6581
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasKeyHandle()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->keyHandle_:Lcom/google/protobuf/ByteString;

    .line 6582
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasKeyHandle()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->keyHandle_:Lcom/google/protobuf/ByteString;

    .line 6580
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->keyHandle_:Lcom/google/protobuf/ByteString;

    .line 6583
    nop

    .line 6584
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasCounter()Z

    move-result v2

    iget-wide v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->counter_:J

    .line 6585
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasCounter()Z

    move-result v5

    iget-wide v6, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->counter_:J

    .line 6583
    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->counter_:J

    .line 6586
    nop

    .line 6587
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceOsVersion()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersion_:Ljava/lang/String;

    .line 6588
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceOsVersion()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersion_:Ljava/lang/String;

    .line 6586
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersion_:Ljava/lang/String;

    .line 6589
    nop

    .line 6590
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceOsVersionCode()Z

    move-result v2

    iget-wide v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersionCode_:J

    .line 6591
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceOsVersionCode()Z

    move-result v5

    iget-wide v6, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersionCode_:J

    .line 6589
    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersionCode_:J

    .line 6592
    nop

    .line 6593
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceOsRelease()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsRelease_:Ljava/lang/String;

    .line 6594
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceOsRelease()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsRelease_:Ljava/lang/String;

    .line 6592
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsRelease_:Ljava/lang/String;

    .line 6595
    nop

    .line 6596
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceOsCodename()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsCodename_:Ljava/lang/String;

    .line 6597
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceOsCodename()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsCodename_:Ljava/lang/String;

    .line 6595
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsCodename_:Ljava/lang/String;

    .line 6598
    nop

    .line 6599
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceSoftwareVersion()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersion_:Ljava/lang/String;

    .line 6600
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceSoftwareVersion()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersion_:Ljava/lang/String;

    .line 6598
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersion_:Ljava/lang/String;

    .line 6601
    nop

    .line 6602
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceSoftwareVersionCode()Z

    move-result v2

    iget-wide v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersionCode_:J

    .line 6603
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceSoftwareVersionCode()Z

    move-result v5

    iget-wide v6, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersionCode_:J

    .line 6601
    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersionCode_:J

    .line 6604
    nop

    .line 6605
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceSoftwarePackage()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwarePackage_:Ljava/lang/String;

    .line 6606
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceSoftwarePackage()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwarePackage_:Ljava/lang/String;

    .line 6604
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwarePackage_:Ljava/lang/String;

    .line 6607
    nop

    .line 6608
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceDisplayDiagonalMils()Z

    move-result v1

    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceDisplayDiagonalMils_:I

    .line 6609
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceDisplayDiagonalMils()Z

    move-result v3

    iget v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceDisplayDiagonalMils_:I

    .line 6607
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v1

    iput v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceDisplayDiagonalMils_:I

    .line 6610
    nop

    .line 6611
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceAuthzenVersion()Z

    move-result v1

    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceAuthzenVersion_:I

    .line 6612
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceAuthzenVersion()Z

    move-result v3

    iget v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceAuthzenVersion_:I

    .line 6610
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v1

    iput v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceAuthzenVersion_:I

    .line 6613
    nop

    .line 6614
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasLongDeviceId()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->longDeviceId_:Lcom/google/protobuf/ByteString;

    .line 6615
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasLongDeviceId()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->longDeviceId_:Lcom/google/protobuf/ByteString;

    .line 6613
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->longDeviceId_:Lcom/google/protobuf/ByteString;

    .line 6616
    nop

    .line 6617
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceManufacturer()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceManufacturer_:Ljava/lang/String;

    .line 6618
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceManufacturer()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceManufacturer_:Ljava/lang/String;

    .line 6616
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceManufacturer_:Ljava/lang/String;

    .line 6619
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceType()Z

    move-result v1

    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceType_:I

    .line 6620
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasDeviceType()Z

    move-result v3

    iget v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceType_:I

    .line 6619
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v1

    iput v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceType_:I

    .line 6621
    nop

    .line 6622
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasUsingSecureScreenlock()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->usingSecureScreenlock_:Z

    .line 6623
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasUsingSecureScreenlock()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->usingSecureScreenlock_:Z

    .line 6621
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->usingSecureScreenlock_:Z

    .line 6624
    nop

    .line 6625
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasAutoUnlockScreenlockSupported()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockSupported_:Z

    .line 6626
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasAutoUnlockScreenlockSupported()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockSupported_:Z

    .line 6624
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockSupported_:Z

    .line 6627
    nop

    .line 6628
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasAutoUnlockScreenlockEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockEnabled_:Z

    .line 6629
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasAutoUnlockScreenlockEnabled()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockEnabled_:Z

    .line 6627
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockEnabled_:Z

    .line 6630
    nop

    .line 6631
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasBluetoothRadioSupported()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioSupported_:Z

    .line 6632
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasBluetoothRadioSupported()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioSupported_:Z

    .line 6630
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioSupported_:Z

    .line 6633
    nop

    .line 6634
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasBluetoothRadioEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioEnabled_:Z

    .line 6635
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasBluetoothRadioEnabled()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioEnabled_:Z

    .line 6633
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioEnabled_:Z

    .line 6636
    nop

    .line 6637
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasMobileDataSupported()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->mobileDataSupported_:Z

    .line 6638
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasMobileDataSupported()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->mobileDataSupported_:Z

    .line 6636
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->mobileDataSupported_:Z

    .line 6639
    nop

    .line 6640
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasTetheringSupported()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->tetheringSupported_:Z

    .line 6641
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasTetheringSupported()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->tetheringSupported_:Z

    .line 6639
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->tetheringSupported_:Z

    .line 6642
    nop

    .line 6643
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasBleRadioSupported()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bleRadioSupported_:Z

    .line 6644
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasBleRadioSupported()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bleRadioSupported_:Z

    .line 6642
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bleRadioSupported_:Z

    .line 6645
    nop

    .line 6646
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasPixelExperience()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->pixelExperience_:Z

    .line 6647
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasPixelExperience()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->pixelExperience_:Z

    .line 6645
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->pixelExperience_:Z

    .line 6648
    nop

    .line 6649
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasArcPlusPlus()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->arcPlusPlus_:Z

    .line 6650
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasArcPlusPlus()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->arcPlusPlus_:Z

    .line 6648
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->arcPlusPlus_:Z

    .line 6651
    nop

    .line 6652
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasIsScreenlockStateFlaky()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->isScreenlockStateFlaky_:Z

    .line 6653
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasIsScreenlockStateFlaky()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->isScreenlockStateFlaky_:Z

    .line 6651
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->isScreenlockStateFlaky_:Z

    .line 6654
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    iget-object v2, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/google/protobuf/Internal$IntList;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 6655
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    iget-object v2, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/google/protobuf/Internal$IntList;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 6656
    nop

    .line 6657
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasEnrollmentSessionId()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enrollmentSessionId_:Lcom/google/protobuf/ByteString;

    .line 6658
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasEnrollmentSessionId()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enrollmentSessionId_:Lcom/google/protobuf/ByteString;

    .line 6656
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enrollmentSessionId_:Lcom/google/protobuf/ByteString;

    .line 6659
    nop

    .line 6660
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasOauthToken()Z

    move-result v1

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->oauthToken_:Ljava/lang/String;

    .line 6661
    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasOauthToken()Z

    move-result v3

    iget-object v4, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->oauthToken_:Ljava/lang/String;

    .line 6659
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->oauthToken_:Ljava/lang/String;

    .line 6662
    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v1, :cond_f

    .line 6664
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    iget v2, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    .line 6665
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    iget v2, v8, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    .line 6667
    :cond_f
    return-object p0

    .line 6548
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v8    # "other":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;)V

    return-object v0

    .line 6543
    :pswitch_5
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->makeImmutable()V

    .line 6544
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->makeImmutable()V

    .line 6545
    return-object v1

    .line 6527
    :pswitch_6
    iget-byte v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->memoizedIsInitialized:B

    .line 6528
    .local v0, "isInitialized":B
    if-ne v0, v2, :cond_10

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v1

    .line 6529
    :cond_10
    if-nez v0, :cond_11

    return-object v1

    .line 6531
    :cond_11
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 6532
    .local v3, "shouldMemoize":Z
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->hasUserPublicKey()Z

    move-result v4

    if-nez v4, :cond_13

    .line 6533
    if-eqz v3, :cond_12

    .line 6534
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->memoizedIsInitialized:B

    .line 6536
    :cond_12
    return-object v1

    .line 6538
    :cond_13
    if-eqz v3, :cond_14

    iput-byte v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->memoizedIsInitialized:B

    .line 6539
    :cond_14
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    return-object v1

    .line 6524
    .end local v0    # "isInitialized":B
    .end local v3    # "shouldMemoize":Z
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;-><init>()V

    return-object v0

    nop

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

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_28
        0x9 -> :sswitch_27
        0x22 -> :sswitch_26
        0x3a -> :sswitch_25
        0x42 -> :sswitch_24
        0x4a -> :sswitch_23
        0x60 -> :sswitch_22
        0x6a -> :sswitch_21
        0x70 -> :sswitch_20
        0x7a -> :sswitch_1f
        0x82 -> :sswitch_1e
        0x8a -> :sswitch_1d
        0x90 -> :sswitch_1c
        0x9a -> :sswitch_1b
        0xb0 -> :sswitch_1a
        0xc0 -> :sswitch_19
        0xea -> :sswitch_18
        0xfa -> :sswitch_17
        0x100 -> :sswitch_16
        0x332 -> :sswitch_15
        0x33a -> :sswitch_14
        0x652 -> :sswitch_13
        0x658 -> :sswitch_12
        0x972 -> :sswitch_11
        0xc80 -> :sswitch_10
        0xc88 -> :sswitch_f
        0xc90 -> :sswitch_e
        0xc98 -> :sswitch_d
        0xca0 -> :sswitch_c
        0xca8 -> :sswitch_b
        0xcb0 -> :sswitch_a
        0xcb8 -> :sswitch_9
        0xcc0 -> :sswitch_8
        0xcc8 -> :sswitch_7
        0xcd0 -> :sswitch_6
        0xcd8 -> :sswitch_5
        0xcda -> :sswitch_4
        0xce0 -> :sswitch_3
        0xce2 -> :sswitch_2
        0x1f42 -> :sswitch_1
        0x1f4a -> :sswitch_0
    .end sparse-switch
.end method

.method public getAndroidDeviceId()J
    .locals 2

    .line 1816
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->androidDeviceId_:J

    return-wide v0
.end method

.method public getApnRegistrationId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1913
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->apnRegistrationId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getArcPlusPlus()Z
    .locals 1

    .line 3612
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->arcPlusPlus_:Z

    return v0
.end method

.method public getAutoUnlockScreenlockEnabled()Z
    .locals 1

    .line 3297
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockEnabled_:Z

    return v0
.end method

.method public getAutoUnlockScreenlockSupported()Z
    .locals 1

    .line 3252
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockSupported_:Z

    return v0
.end method

.method public getBleRadioSupported()Z
    .locals 1

    .line 3522
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bleRadioSupported_:Z

    return v0
.end method

.method public getBluetoothMacAddress()Ljava/lang/String;
    .locals 1

    .line 2008
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothMacAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothMacAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2020
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothMacAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothRadioEnabled()Z
    .locals 1

    .line 3387
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioEnabled_:Z

    return v0
.end method

.method public getBluetoothRadioSupported()Z
    .locals 1

    .line 3342
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioSupported_:Z

    return v0
.end method

.method public getCounter()J
    .locals 2

    .line 2391
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->counter_:J

    return-wide v0
.end method

.method public getDeviceAuthzenVersion()I
    .locals 1

    .line 2984
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceAuthzenVersion_:I

    return v0
.end method

.method public getDeviceDisplayDiagonalMils()I
    .locals 1

    .line 2939
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceDisplayDiagonalMils_:I

    return v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .line 3079
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceManufacturer_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceManufacturerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3091
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceManufacturer_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceMasterKeyHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2089
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceMasterKeyHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 2189
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2201
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceModel_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOsCodename()Ljava/lang/String;
    .locals 1

    .line 2649
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsCodename_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsCodenameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2661
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsCodename_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOsRelease()Ljava/lang/String;
    .locals 1

    .line 2568
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsRelease_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsReleaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2580
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsRelease_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 1

    .line 2438
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2450
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOsVersionCode()J
    .locals 2

    .line 2519
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersionCode_:J

    return-wide v0
.end method

.method public getDeviceSoftwarePackage()Ljava/lang/String;
    .locals 1

    .line 2860
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwarePackage_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSoftwarePackageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2872
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwarePackage_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 2730
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2742
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersionCode()J
    .locals 2

    .line 2811
    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersionCode_:J

    return-wide v0
.end method

.method public getDeviceType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    .locals 2

    .line 3158
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceType_:I

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    move-result-object v0

    .line 3159
    .local v0, "result":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->ANDROID:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getEnabledSoftwareFeatures(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    .locals 2
    .param p1, "index"    # I

    .line 3835
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    return-object v0
.end method

.method public getEnabledSoftwareFeaturesCount()I
    .locals 1

    .line 3824
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledSoftwareFeaturesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;"
        }
    .end annotation

    .line 3812
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getEnrollmentSessionId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3921
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enrollmentSessionId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGcmRegistrationId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1865
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->gcmRegistrationId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsScreenlockStateFlaky()Z
    .locals 1

    .line 3661
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->isScreenlockStateFlaky_:Z

    return v0
.end method

.method public getKeyHandle()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2343
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->keyHandle_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 2268
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2279
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->locale_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLongDeviceId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3029
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->longDeviceId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMobileDataSupported()Z
    .locals 1

    .line 3432
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->mobileDataSupported_:Z

    return v0
.end method

.method public getNotificationEnabled()Z
    .locals 1

    .line 1961
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->notificationEnabled_:Z

    return v0
.end method

.method public getOauthToken()Ljava/lang/String;
    .locals 1

    .line 3969
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->oauthToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3980
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->oauthToken_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPixelExperience()Z
    .locals 1

    .line 3567
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->pixelExperience_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 9

    .line 4144
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->memoizedSerializedSize:I

    .line 4145
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 4147
    :cond_0
    const/4 v0, 0x0

    .line 4148
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 4149
    iget-wide v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->androidDeviceId_:J

    .line 4150
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4152
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    const/4 v4, 0x4

    if-ne v1, v3, :cond_2

    .line 4153
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->userPublicKey_:Lcom/google/protobuf/ByteString;

    .line 4154
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4156
    :cond_2
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 4157
    const/4 v1, 0x7

    .line 4158
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4160
    :cond_3
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v3, 0x100

    and-int/2addr v1, v3

    const/16 v5, 0x8

    if-ne v1, v3, :cond_4

    .line 4161
    nop

    .line 4162
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4164
    :cond_4
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v3, 0x200

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    .line 4165
    const/16 v1, 0x9

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->keyHandle_:Lcom/google/protobuf/ByteString;

    .line 4166
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4168
    :cond_5
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v3, 0x400

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    .line 4169
    const/16 v1, 0xc

    iget-wide v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->counter_:J

    .line 4170
    invoke-static {v1, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4172
    :cond_6
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v3, 0x800

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    .line 4173
    const/16 v1, 0xd

    .line 4174
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4176
    :cond_7
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v3, 0x1000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    .line 4177
    const/16 v1, 0xe

    iget-wide v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersionCode_:J

    .line 4178
    invoke-static {v1, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4180
    :cond_8
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v3, 0x2000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_9

    .line 4181
    const/16 v1, 0xf

    .line 4182
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsRelease()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4184
    :cond_9
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v3, 0x4000

    and-int/2addr v1, v3

    const/16 v6, 0x10

    if-ne v1, v3, :cond_a

    .line 4185
    nop

    .line 4186
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsCodename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4188
    :cond_a
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_b

    .line 4189
    const/16 v1, 0x11

    .line 4190
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4192
    :cond_b
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_c

    .line 4193
    const/16 v1, 0x12

    iget-wide v7, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersionCode_:J

    .line 4194
    invoke-static {v1, v7, v8}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4196
    :cond_c
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_d

    .line 4197
    const/16 v1, 0x13

    .line 4198
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceSoftwarePackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4200
    :cond_d
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_e

    .line 4201
    const/16 v1, 0x16

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceDisplayDiagonalMils_:I

    .line 4202
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4204
    :cond_e
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_f

    .line 4205
    const/16 v1, 0x18

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceAuthzenVersion_:I

    .line 4206
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4208
    :cond_f
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v3, 0x100000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_10

    .line 4209
    const/16 v1, 0x1d

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->longDeviceId_:Lcom/google/protobuf/ByteString;

    .line 4210
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4212
    :cond_10
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v3, 0x200000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_11

    .line 4213
    const/16 v1, 0x1f

    .line 4214
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4216
    :cond_11
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v3, 0x400000

    and-int/2addr v1, v3

    const/16 v7, 0x20

    if-ne v1, v3, :cond_12

    .line 4217
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceType_:I

    .line 4218
    invoke-static {v7, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4220
    :cond_12
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_13

    .line 4221
    const/16 v1, 0x66

    iget-object v8, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->gcmRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 4222
    invoke-static {v1, v8}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4224
    :cond_13
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_14

    .line 4225
    const/16 v1, 0x67

    iget-object v7, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceMasterKeyHash_:Lcom/google/protobuf/ByteString;

    .line 4226
    invoke-static {v1, v7}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4228
    :cond_14
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_15

    .line 4229
    const/16 v1, 0xca

    iget-object v7, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->apnRegistrationId_:Lcom/google/protobuf/ByteString;

    .line 4230
    invoke-static {v1, v7}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4232
    :cond_15
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_16

    .line 4233
    const/16 v1, 0xcb

    iget-boolean v7, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->notificationEnabled_:Z

    .line 4234
    invoke-static {v1, v7}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4236
    :cond_16
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_17

    .line 4237
    const/16 v1, 0x12e

    .line 4238
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getBluetoothMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4240
    :cond_17
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x800000

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_18

    .line 4241
    const/16 v1, 0x190

    iget-boolean v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->usingSecureScreenlock_:Z

    .line 4242
    invoke-static {v1, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4244
    :cond_18
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x1000000

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_19

    .line 4245
    const/16 v1, 0x191

    iget-boolean v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockSupported_:Z

    .line 4246
    invoke-static {v1, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4248
    :cond_19
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x2000000

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1a

    .line 4249
    const/16 v1, 0x192

    iget-boolean v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockEnabled_:Z

    .line 4250
    invoke-static {v1, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4252
    :cond_1a
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x4000000

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1b

    .line 4253
    const/16 v1, 0x193

    iget-boolean v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioSupported_:Z

    .line 4254
    invoke-static {v1, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4256
    :cond_1b
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x8000000

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1c

    .line 4257
    const/16 v1, 0x194

    iget-boolean v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioEnabled_:Z

    .line 4258
    invoke-static {v1, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4260
    :cond_1c
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x10000000

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1d

    .line 4261
    const/16 v1, 0x195

    iget-boolean v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->mobileDataSupported_:Z

    .line 4262
    invoke-static {v1, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4264
    :cond_1d
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x20000000

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1e

    .line 4265
    const/16 v1, 0x196

    iget-boolean v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->tetheringSupported_:Z

    .line 4266
    invoke-static {v1, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4268
    :cond_1e
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1f

    .line 4269
    const/16 v1, 0x197

    iget-boolean v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bleRadioSupported_:Z

    .line 4270
    invoke-static {v1, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4272
    :cond_1f
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v6, -0x80000000

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_20

    .line 4273
    const/16 v1, 0x198

    iget-boolean v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->pixelExperience_:Z

    .line 4274
    invoke-static {v1, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4276
    :cond_20
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    .line 4277
    const/16 v1, 0x199

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->arcPlusPlus_:Z

    .line 4278
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4280
    :cond_21
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_22

    .line 4281
    const/16 v1, 0x19a

    iget-boolean v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->isScreenlockStateFlaky_:Z

    .line 4282
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4285
    :cond_22
    const/4 v1, 0x0

    .line 4286
    .local v1, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v6}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v6

    if-ge v2, v6, :cond_23

    .line 4287
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 4288
    invoke-interface {v6, v2}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 4286
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4290
    .end local v2    # "i":I
    :cond_23
    add-int/2addr v0, v1

    .line 4291
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v2

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 4294
    .end local v1    # "dataSize":I
    const/4 v1, 0x0

    .line 4295
    .restart local v1    # "dataSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v6}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v6

    if-ge v2, v6, :cond_24

    .line 4296
    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    .line 4297
    invoke-interface {v6, v2}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 4295
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4299
    .end local v2    # "i":I
    :cond_24
    add-int/2addr v0, v1

    .line 4300
    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v2

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 4302
    .end local v1    # "dataSize":I
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_25

    .line 4303
    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enrollmentSessionId_:Lcom/google/protobuf/ByteString;

    .line 4304
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4306
    :cond_25
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_26

    .line 4307
    const/16 v1, 0x3e9

    .line 4308
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getOauthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4310
    :cond_26
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4311
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->memoizedSerializedSize:I

    .line 4312
    return v0
.end method

.method public getSupportedSoftwareFeatures(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    .locals 2
    .param p1, "index"    # I

    .line 3730
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    return-object v0
.end method

.method public getSupportedSoftwareFeaturesCount()I
    .locals 1

    .line 3720
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedSoftwareFeaturesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
            ">;"
        }
    .end annotation

    .line 3709
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getTetheringSupported()Z
    .locals 1

    .line 3477
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->tetheringSupported_:Z

    return v0
.end method

.method public getUserPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2139
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->userPublicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUsingSecureScreenlock()Z
    .locals 1

    .line 3207
    iget-boolean v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->usingSecureScreenlock_:Z

    return v0
.end method

.method public hasAndroidDeviceId()Z
    .locals 2

    .line 1804
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasApnRegistrationId()Z
    .locals 2

    .line 1903
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

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

.method public hasArcPlusPlus()Z
    .locals 2

    .line 3602
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasAutoUnlockScreenlockEnabled()Z
    .locals 2

    .line 3287
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAutoUnlockScreenlockSupported()Z
    .locals 2

    .line 3242
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBleRadioSupported()Z
    .locals 2

    .line 3512
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBluetoothMacAddress()Z
    .locals 2

    .line 1997
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBluetoothRadioEnabled()Z
    .locals 2

    .line 3377
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBluetoothRadioSupported()Z
    .locals 2

    .line 3332
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCounter()Z
    .locals 2

    .line 2381
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceAuthzenVersion()Z
    .locals 2

    .line 2974
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceDisplayDiagonalMils()Z
    .locals 2

    .line 2929
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceManufacturer()Z
    .locals 2

    .line 3068
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceMasterKeyHash()Z
    .locals 2

    .line 2078
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceModel()Z
    .locals 2

    .line 2178
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceOsCodename()Z
    .locals 2

    .line 2638
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceOsRelease()Z
    .locals 2

    .line 2557
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceOsVersion()Z
    .locals 2

    .line 2427
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceOsVersionCode()Z
    .locals 2

    .line 2508
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceSoftwarePackage()Z
    .locals 2

    .line 2849
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceSoftwareVersion()Z
    .locals 2

    .line 2719
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceSoftwareVersionCode()Z
    .locals 2

    .line 2800
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceType()Z
    .locals 2

    .line 3148
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnrollmentSessionId()Z
    .locals 2

    .line 3911
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

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

.method public hasGcmRegistrationId()Z
    .locals 2

    .line 1855
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

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

.method public hasIsScreenlockStateFlaky()Z
    .locals 2

    .line 3649
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

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

.method public hasKeyHandle()Z
    .locals 2

    .line 2333
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocale()Z
    .locals 2

    .line 2258
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLongDeviceId()Z
    .locals 2

    .line 3019
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMobileDataSupported()Z
    .locals 2

    .line 3422
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotificationEnabled()Z
    .locals 2

    .line 1951
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOauthToken()Z
    .locals 2

    .line 3959
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPixelExperience()Z
    .locals 2

    .line 3557
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTetheringSupported()Z
    .locals 2

    .line 3467
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserPublicKey()Z
    .locals 2

    .line 2129
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUsingSecureScreenlock()Z
    .locals 2

    .line 3197
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v1, 0x800000

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
    .locals 8
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4026
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 4027
    iget-wide v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->androidDeviceId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 4029
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v0, v2

    const/4 v3, 0x4

    if-ne v0, v2, :cond_1

    .line 4030
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->userPublicKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4032
    :cond_1
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 4033
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4035
    :cond_2
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v0, v2

    const/16 v4, 0x8

    if-ne v0, v2, :cond_3

    .line 4036
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4038
    :cond_3
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    .line 4039
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->keyHandle_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4041
    :cond_4
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    .line 4042
    const/16 v0, 0xc

    iget-wide v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->counter_:J

    invoke-virtual {p1, v0, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 4044
    :cond_5
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v2, 0x800

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    .line 4045
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4047
    :cond_6
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v2, 0x1000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    .line 4048
    const/16 v0, 0xe

    iget-wide v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceOsVersionCode_:J

    invoke-virtual {p1, v0, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 4050
    :cond_7
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_8

    .line 4051
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsRelease()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4053
    :cond_8
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/16 v2, 0x4000

    and-int/2addr v0, v2

    const/16 v5, 0x10

    if-ne v0, v2, :cond_9

    .line 4054
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceOsCodename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4056
    :cond_9
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_a

    .line 4057
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4059
    :cond_a
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_b

    .line 4060
    const/16 v0, 0x12

    iget-wide v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceSoftwareVersionCode_:J

    invoke-virtual {p1, v0, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 4062
    :cond_b
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_c

    .line 4063
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceSoftwarePackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4065
    :cond_c
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_d

    .line 4066
    const/16 v0, 0x16

    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceDisplayDiagonalMils_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4068
    :cond_d
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_e

    .line 4069
    const/16 v0, 0x18

    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceAuthzenVersion_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4071
    :cond_e
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_f

    .line 4072
    const/16 v0, 0x1d

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->longDeviceId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4074
    :cond_f
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_10

    .line 4075
    const/16 v0, 0x1f

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4077
    :cond_10
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    const/16 v6, 0x20

    if-ne v0, v2, :cond_11

    .line 4078
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceType_:I

    invoke-virtual {p1, v6, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4080
    :cond_11
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_12

    .line 4081
    const/16 v0, 0x66

    iget-object v7, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->gcmRegistrationId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v7}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4083
    :cond_12
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_13

    .line 4084
    const/16 v0, 0x67

    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->deviceMasterKeyHash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v6}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4086
    :cond_13
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_14

    .line 4087
    const/16 v0, 0xca

    iget-object v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->apnRegistrationId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v6}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4089
    :cond_14
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_15

    .line 4090
    const/16 v0, 0xcb

    iget-boolean v6, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->notificationEnabled_:Z

    invoke-virtual {p1, v0, v6}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4092
    :cond_15
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_16

    .line 4093
    const/16 v0, 0x12e

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getBluetoothMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4095
    :cond_16
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v5, 0x800000

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_17

    .line 4096
    const/16 v0, 0x190

    iget-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->usingSecureScreenlock_:Z

    invoke-virtual {p1, v0, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4098
    :cond_17
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v5, 0x1000000

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_18

    .line 4099
    const/16 v0, 0x191

    iget-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockSupported_:Z

    invoke-virtual {p1, v0, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4101
    :cond_18
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v5, 0x2000000

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_19

    .line 4102
    const/16 v0, 0x192

    iget-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->autoUnlockScreenlockEnabled_:Z

    invoke-virtual {p1, v0, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4104
    :cond_19
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v5, 0x4000000

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_1a

    .line 4105
    const/16 v0, 0x193

    iget-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioSupported_:Z

    invoke-virtual {p1, v0, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4107
    :cond_1a
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v5, 0x8000000

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_1b

    .line 4108
    const/16 v0, 0x194

    iget-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bluetoothRadioEnabled_:Z

    invoke-virtual {p1, v0, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4110
    :cond_1b
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v5, 0x10000000

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_1c

    .line 4111
    const/16 v0, 0x195

    iget-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->mobileDataSupported_:Z

    invoke-virtual {p1, v0, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4113
    :cond_1c
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v5, 0x20000000

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_1d

    .line 4114
    const/16 v0, 0x196

    iget-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->tetheringSupported_:Z

    invoke-virtual {p1, v0, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4116
    :cond_1d
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_1e

    .line 4117
    const/16 v0, 0x197

    iget-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bleRadioSupported_:Z

    invoke-virtual {p1, v0, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4119
    :cond_1e
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField0_:I

    const/high16 v5, -0x80000000

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_1f

    .line 4120
    const/16 v0, 0x198

    iget-boolean v5, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->pixelExperience_:Z

    invoke-virtual {p1, v0, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4122
    :cond_1f
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_20

    .line 4123
    const/16 v0, 0x199

    iget-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->arcPlusPlus_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4125
    :cond_20
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_21

    .line 4126
    const/16 v0, 0x19a

    iget-boolean v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->isScreenlockStateFlaky_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4128
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 4129
    const/16 v1, 0x19b

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->supportedSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4131
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 4132
    const/16 v1, 0x19c

    iget-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enabledSoftwareFeatures_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4134
    .end local v0    # "i":I
    :cond_23
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_24

    .line 4135
    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->enrollmentSessionId_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4137
    :cond_24
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->bitField1_:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_25

    .line 4138
    const/16 v0, 0x3e9

    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->getOauthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4140
    :cond_25
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4141
    return-void
.end method
