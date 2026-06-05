.class public final synthetic Lcom/android/car/-$$Lambda$BluetoothProfileDeviceManager$4VUdKmTWIP86WOXhagJ5MWhuh0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/BluetoothProfileDeviceManager;

.field private final synthetic f$1:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/BluetoothProfileDeviceManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$BluetoothProfileDeviceManager$4VUdKmTWIP86WOXhagJ5MWhuh0g;->f$0:Lcom/android/car/BluetoothProfileDeviceManager;

    iput-object p2, p0, Lcom/android/car/-$$Lambda$BluetoothProfileDeviceManager$4VUdKmTWIP86WOXhagJ5MWhuh0g;->f$1:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/-$$Lambda$BluetoothProfileDeviceManager$4VUdKmTWIP86WOXhagJ5MWhuh0g;->f$0:Lcom/android/car/BluetoothProfileDeviceManager;

    iget-object v1, p0, Lcom/android/car/-$$Lambda$BluetoothProfileDeviceManager$4VUdKmTWIP86WOXhagJ5MWhuh0g;->f$1:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->lambda$autoConnectWithTimeout$1$BluetoothProfileDeviceManager(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
