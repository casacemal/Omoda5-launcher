.class Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;
.super Ljava/lang/Object;
.source "BluetoothProfileDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothProfileDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothProfileInfo"
.end annotation


# instance fields
.field final mConnectionAction:Ljava/lang/String;

.field final mProfileTriggers:[I

.field final mSettingsKey:Ljava/lang/String;

.field final mUuids:[Landroid/os/ParcelUuid;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Landroid/os/ParcelUuid;[I)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "settingsKey"    # Ljava/lang/String;
    .param p3, "uuids"    # [Landroid/os/ParcelUuid;
    .param p4, "profileTriggers"    # [I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;->mSettingsKey:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;->mConnectionAction:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;->mUuids:[Landroid/os/ParcelUuid;

    .line 83
    iput-object p4, p0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;->mProfileTriggers:[I

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Landroid/os/ParcelUuid;[ILcom/android/car/BluetoothProfileDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Landroid/os/ParcelUuid;
    .param p4, "x3"    # [I
    .param p5, "x4"    # Lcom/android/car/BluetoothProfileDeviceManager$1;

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Landroid/os/ParcelUuid;[I)V

    return-void
.end method
