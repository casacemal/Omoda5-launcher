.class final Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$1;
.super Ljava/lang/Object;
.source "WeatherRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/data/weather/WeatherRepository;->getLocationFused(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$callback$1;

.field final synthetic $client:Lcom/google/android/gms/location/FusedLocationProviderClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$callback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$1;->$client:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iput-object p2, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$1;->$callback:Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$callback$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 157
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$1;->$client:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$1;->$callback:Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$callback$1;

    check-cast p0, Lcom/google/android/gms/location/LocationCallback;

    invoke-interface {p1, p0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
