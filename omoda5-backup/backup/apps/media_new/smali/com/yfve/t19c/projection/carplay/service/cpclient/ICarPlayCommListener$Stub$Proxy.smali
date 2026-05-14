.class Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarPlayCommListener.java"

# interfaces
.implements Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayCommListener"

    return-object p0
.end method

.method public onError(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayCommListener"

    .line 130
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 134
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 135
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener;->onError(II)V
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

.method public onServiceStatus(III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayCommListener"

    .line 109
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 114
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 115
    invoke-static {}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener$Stub;->getDefaultImpl()Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayCommListener;->onServiceStatus(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 118
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
