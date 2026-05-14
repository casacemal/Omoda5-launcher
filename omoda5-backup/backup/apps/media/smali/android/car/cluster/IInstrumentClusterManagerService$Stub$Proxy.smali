.class Landroid/car/cluster/IInstrumentClusterManagerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInstrumentClusterManagerService.java"

# interfaces
.implements Landroid/car/cluster/IInstrumentClusterManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/cluster/IInstrumentClusterManagerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/cluster/IInstrumentClusterManagerService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroid/car/cluster/IInstrumentClusterManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 112
    iget-object p0, p0, Landroid/car/cluster/IInstrumentClusterManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "android.car.cluster.IInstrumentClusterManagerService"

    return-object p0
.end method

.method public registerCallback(Landroid/car/cluster/IInstrumentClusterManagerCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.cluster.IInstrumentClusterManagerService"

    .line 144
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 145
    invoke-interface {p1}, Landroid/car/cluster/IInstrumentClusterManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 146
    iget-object p0, p0, Landroid/car/cluster/IInstrumentClusterManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 147
    invoke-static {}, Landroid/car/cluster/IInstrumentClusterManagerService$Stub;->getDefaultImpl()Landroid/car/cluster/IInstrumentClusterManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 148
    invoke-static {}, Landroid/car/cluster/IInstrumentClusterManagerService$Stub;->getDefaultImpl()Landroid/car/cluster/IInstrumentClusterManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/car/cluster/IInstrumentClusterManagerService;->registerCallback(Landroid/car/cluster/IInstrumentClusterManagerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
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

.method public startClusterActivity(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.cluster.IInstrumentClusterManagerService"

    .line 122
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    :goto_0
    iget-object p0, p0, Landroid/car/cluster/IInstrumentClusterManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 131
    invoke-static {}, Landroid/car/cluster/IInstrumentClusterManagerService$Stub;->getDefaultImpl()Landroid/car/cluster/IInstrumentClusterManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 132
    invoke-static {}, Landroid/car/cluster/IInstrumentClusterManagerService$Stub;->getDefaultImpl()Landroid/car/cluster/IInstrumentClusterManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/car/cluster/IInstrumentClusterManagerService;->startClusterActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
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

.method public unregisterCallback(Landroid/car/cluster/IInstrumentClusterManagerCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.cluster.IInstrumentClusterManagerService"

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p1}, Landroid/car/cluster/IInstrumentClusterManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 162
    iget-object p0, p0, Landroid/car/cluster/IInstrumentClusterManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 163
    invoke-static {}, Landroid/car/cluster/IInstrumentClusterManagerService$Stub;->getDefaultImpl()Landroid/car/cluster/IInstrumentClusterManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 164
    invoke-static {}, Landroid/car/cluster/IInstrumentClusterManagerService$Stub;->getDefaultImpl()Landroid/car/cluster/IInstrumentClusterManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/car/cluster/IInstrumentClusterManagerService;->unregisterCallback(Landroid/car/cluster/IInstrumentClusterManagerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
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
