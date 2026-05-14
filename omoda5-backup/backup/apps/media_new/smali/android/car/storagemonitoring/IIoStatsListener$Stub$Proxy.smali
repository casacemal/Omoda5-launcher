.class Landroid/car/storagemonitoring/IIoStatsListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIoStatsListener.java"

# interfaces
.implements Landroid/car/storagemonitoring/IIoStatsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/storagemonitoring/IIoStatsListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/storagemonitoring/IIoStatsListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/car/storagemonitoring/IIoStatsListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 90
    iget-object p0, p0, Landroid/car/storagemonitoring/IIoStatsListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "android.car.storagemonitoring.IIoStatsListener"

    return-object p0
.end method

.method public onSnapshot(Landroid/car/storagemonitoring/IoStats;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.storagemonitoring.IIoStatsListener"

    .line 105
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/car/storagemonitoring/IoStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    :goto_0
    iget-object p0, p0, Landroid/car/storagemonitoring/IIoStatsListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 114
    invoke-static {}, Landroid/car/storagemonitoring/IIoStatsListener$Stub;->getDefaultImpl()Landroid/car/storagemonitoring/IIoStatsListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 115
    invoke-static {}, Landroid/car/storagemonitoring/IIoStatsListener$Stub;->getDefaultImpl()Landroid/car/storagemonitoring/IIoStatsListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/car/storagemonitoring/IIoStatsListener;->onSnapshot(Landroid/car/storagemonitoring/IoStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
