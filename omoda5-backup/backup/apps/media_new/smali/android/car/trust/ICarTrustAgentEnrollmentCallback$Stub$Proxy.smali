.class Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarTrustAgentEnrollmentCallback.java"

# interfaces
.implements Landroid/car/trust/ICarTrustAgentEnrollmentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/trust/ICarTrustAgentEnrollmentCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 161
    iget-object p0, p0, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "android.car.trust.ICarTrustAgentEnrollmentCallback"

    return-object p0
.end method

.method public onAuthStringAvailable(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.trust.ICarTrustAgentEnrollmentCallback"

    .line 200
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    invoke-virtual {p1, v0, v2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object p0, p0, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 210
    invoke-static {}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 211
    invoke-static {}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;->onAuthStringAvailable(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
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

.method public onEnrollmentHandshakeFailure(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.trust.ICarTrustAgentEnrollmentCallback"

    .line 174
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object p0, p0, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 184
    invoke-static {}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 185
    invoke-static {}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;->onEnrollmentHandshakeFailure(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
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

.method public onEscrowTokenActiveStateChanged(JZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.trust.ICarTrustAgentEnrollmentCallback"

    .line 266
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 268
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object p0, p0, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 270
    invoke-static {}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 271
    invoke-static {}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;->onEscrowTokenActiveStateChanged(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
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

.method public onEscrowTokenAdded(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.trust.ICarTrustAgentEnrollmentCallback"

    .line 226
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    iget-object p0, p0, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 229
    invoke-static {}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 230
    invoke-static {}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;->onEscrowTokenAdded(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
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

.method public onEscrowTokenRemoved(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.trust.ICarTrustAgentEnrollmentCallback"

    .line 247
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 249
    iget-object p0, p0, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 250
    invoke-static {}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 251
    invoke-static {}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->getDefaultImpl()Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;->onEscrowTokenRemoved(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
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
