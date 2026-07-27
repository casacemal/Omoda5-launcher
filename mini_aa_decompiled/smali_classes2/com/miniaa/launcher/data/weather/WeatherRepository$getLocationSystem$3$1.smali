.class final Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$1;
.super Ljava/lang/Object;
.source "WeatherRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/data/weather/WeatherRepository;->getLocationSystem(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic $listener:Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$listener$1;

.field final synthetic $lm:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$listener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$1;->$lm:Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$1;->$listener:Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$listener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 204
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 204
    iget-object p1, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$1;->$lm:Landroid/location/LocationManager;

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$1;->$listener:Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$listener$1;

    check-cast p0, Landroid/location/LocationListener;

    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
