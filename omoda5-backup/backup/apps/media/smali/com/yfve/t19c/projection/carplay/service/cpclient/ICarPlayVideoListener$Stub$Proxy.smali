.class Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarPlayVideoListener.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayVideoListener"

    return-object p0
.end method

.method public onStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayVideoListener"

    .line 99
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 101
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 102
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 105
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onStop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayVideoListener"

    .line 117
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 119
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 120
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayVideoListener;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 123
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
