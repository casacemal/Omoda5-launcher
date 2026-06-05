.class public final synthetic Lcom/android/car/-$$Lambda$BluetoothProfileInhibitManager$rBHUcTWwdCYXr5CoJJSNYyW4ESY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$BluetoothProfileInhibitManager$rBHUcTWwdCYXr5CoJJSNYyW4ESY;->f$0:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$BluetoothProfileInhibitManager$rBHUcTWwdCYXr5CoJJSNYyW4ESY;->f$0:Landroid/os/IBinder;

    check-cast p1, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;

    invoke-static {v0, p1}, Lcom/android/car/BluetoothProfileInhibitManager;->lambda$findInhibitRecord$0(Landroid/os/IBinder;Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;)Z

    move-result p1

    return p1
.end method
