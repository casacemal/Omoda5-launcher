.class Landroid/car/trust/ICarTrustAgentBleCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarTrustAgentBleCallback.java"

# interfaces
.implements Landroid/car/trust/ICarTrustAgentBleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/ICarTrustAgentBleCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/trust/ICarTrustAgentBleCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroid/car/trust/ICarTrustAgentBleCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 135
    iget-object p0, p0, Landroid/car/trust/ICarTrustAgentBleCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "android.car.trust.ICarTrustAgentBleCallback"

    return-object p0
.end method

.method public onBleEnrollmentDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.trust.ICarTrustAgentBleCallback"

    .line 184
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {p1, v0, v2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    :goto_0
    iget-object p0, p0, Landroid/car/trust/ICarTrustAgentBleCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 193
    invoke-static {}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 194
    invoke-static {}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/car/trust/ICarTrustAgentBleCallback;->onBleEnrollmentDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
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

.method public onBleEnrollmentDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.trust.ICarTrustAgentBleCallback"

    .line 209
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {p1, v0, v2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    :goto_0
    iget-object p0, p0, Landroid/car/trust/ICarTrustAgentBleCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 218
    invoke-static {}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 219
    invoke-static {}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/car/trust/ICarTrustAgentBleCallback;->onBleEnrollmentDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
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

.method public onEnrollmentAdvertisingFailed()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.trust.ICarTrustAgentBleCallback"

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 167
    iget-object p0, p0, Landroid/car/trust/ICarTrustAgentBleCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 168
    invoke-static {}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 169
    invoke-static {}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object p0

    invoke-interface {p0}, Landroid/car/trust/ICarTrustAgentBleCallback;->onEnrollmentAdvertisingFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onEnrollmentAdvertisingStarted()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.trust.ICarTrustAgentBleCallback"

    .line 148
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    iget-object p0, p0, Landroid/car/trust/ICarTrustAgentBleCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 150
    invoke-static {}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 151
    invoke-static {}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object p0

    invoke-interface {p0}, Landroid/car/trust/ICarTrustAgentBleCallback;->onEnrollmentAdvertisingStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
