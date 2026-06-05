.class public final synthetic Lcom/android/car/trust/-$$Lambda$BleManager$Dq-f1eKAFssjT5au7PXFoKDOgOI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/trust/BleManager;

.field private final synthetic f$1:Landroid/bluetooth/le/AdvertiseSettings;

.field private final synthetic f$2:Landroid/bluetooth/le/AdvertiseData;

.field private final synthetic f$3:Landroid/bluetooth/le/AdvertiseCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/trust/BleManager;Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/trust/-$$Lambda$BleManager$Dq-f1eKAFssjT5au7PXFoKDOgOI;->f$0:Lcom/android/car/trust/BleManager;

    iput-object p2, p0, Lcom/android/car/trust/-$$Lambda$BleManager$Dq-f1eKAFssjT5au7PXFoKDOgOI;->f$1:Landroid/bluetooth/le/AdvertiseSettings;

    iput-object p3, p0, Lcom/android/car/trust/-$$Lambda$BleManager$Dq-f1eKAFssjT5au7PXFoKDOgOI;->f$2:Landroid/bluetooth/le/AdvertiseData;

    iput-object p4, p0, Lcom/android/car/trust/-$$Lambda$BleManager$Dq-f1eKAFssjT5au7PXFoKDOgOI;->f$3:Landroid/bluetooth/le/AdvertiseCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/car/trust/-$$Lambda$BleManager$Dq-f1eKAFssjT5au7PXFoKDOgOI;->f$0:Lcom/android/car/trust/BleManager;

    iget-object v1, p0, Lcom/android/car/trust/-$$Lambda$BleManager$Dq-f1eKAFssjT5au7PXFoKDOgOI;->f$1:Landroid/bluetooth/le/AdvertiseSettings;

    iget-object v2, p0, Lcom/android/car/trust/-$$Lambda$BleManager$Dq-f1eKAFssjT5au7PXFoKDOgOI;->f$2:Landroid/bluetooth/le/AdvertiseData;

    iget-object v3, p0, Lcom/android/car/trust/-$$Lambda$BleManager$Dq-f1eKAFssjT5au7PXFoKDOgOI;->f$3:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/car/trust/BleManager;->lambda$startAdvertisingInternally$1$BleManager(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    return-void
.end method
