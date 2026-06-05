.class public final synthetic Lcom/android/car/trust/-$$Lambda$BleManager$-n3T9QeJVwkSM0RCsARFvrCJw3A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/trust/BleManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/trust/BleManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/trust/-$$Lambda$BleManager$-n3T9QeJVwkSM0RCsARFvrCJw3A;->f$0:Lcom/android/car/trust/BleManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/car/trust/-$$Lambda$BleManager$-n3T9QeJVwkSM0RCsARFvrCJw3A;->f$0:Lcom/android/car/trust/BleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/BleManager;->lambda$openGattServer$0$BleManager()V

    return-void
.end method
