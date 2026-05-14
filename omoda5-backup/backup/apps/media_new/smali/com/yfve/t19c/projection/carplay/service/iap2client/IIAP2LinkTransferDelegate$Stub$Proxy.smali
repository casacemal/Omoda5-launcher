.class Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIAP2LinkTransferDelegate.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getConnectionInfo()Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate"

    .line 188
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 190
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 191
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;->getConnectionInfo()Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 193
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 195
    sget-object p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 202
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate"

    return-object p0
.end method

.method public registerIAP2LinkDataReceiveListener(Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkDataReceiveListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate"

    .line 150
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 151
    invoke-interface {p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkDataReceiveListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 152
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 153
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 154
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;->registerIAP2LinkDataReceiveListener(Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkDataReceiveListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 157
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public sendData([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate"

    .line 131
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 133
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 134
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 135
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;->sendData([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 138
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisterIAP2LinkDataReceiveListener()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.iap2client.IIAP2LinkTransferDelegate"

    .line 169
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 171
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 172
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IIAP2LinkTransferDelegate;->unregisterIAP2LinkDataReceiveListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 175
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
