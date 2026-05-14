.class Landroid/car/diagnostic/ICarDiagnosticEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarDiagnosticEventListener.java"

# interfaces
.implements Landroid/car/diagnostic/ICarDiagnosticEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/diagnostic/ICarDiagnosticEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/diagnostic/ICarDiagnosticEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/car/diagnostic/ICarDiagnosticEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 82
    iget-object p0, p0, Landroid/car/diagnostic/ICarDiagnosticEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "android.car.diagnostic.ICarDiagnosticEventListener"

    return-object p0
.end method

.method public onDiagnosticEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.diagnostic.ICarDiagnosticEventListener"

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 94
    iget-object p0, p0, Landroid/car/diagnostic/ICarDiagnosticEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 95
    invoke-static {}, Landroid/car/diagnostic/ICarDiagnosticEventListener$Stub;->getDefaultImpl()Landroid/car/diagnostic/ICarDiagnosticEventListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 96
    invoke-static {}, Landroid/car/diagnostic/ICarDiagnosticEventListener$Stub;->getDefaultImpl()Landroid/car/diagnostic/ICarDiagnosticEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/car/diagnostic/ICarDiagnosticEventListener;->onDiagnosticEvents(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
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
