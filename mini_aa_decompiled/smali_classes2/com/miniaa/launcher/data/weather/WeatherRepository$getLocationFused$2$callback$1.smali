.class public final Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$callback$1;
.super Lcom/google/android/gms/location/LocationCallback;
.source "WeatherRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/data/weather/WeatherRepository;->getLocationFused(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$callback$1",
        "Lcom/google/android/gms/location/LocationCallback;",
        "onLocationResult",
        "",
        "result",
        "Lcom/google/android/gms/location/LocationResult;",
        "app_systemRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $client:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field final synthetic $cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/FusedLocationProviderClient;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$callback$1;->$client:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iput-object p2, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$callback$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 149
    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$callback$1;->$client:Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/location/LocationCallback;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    .line 152
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$callback$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p0, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
