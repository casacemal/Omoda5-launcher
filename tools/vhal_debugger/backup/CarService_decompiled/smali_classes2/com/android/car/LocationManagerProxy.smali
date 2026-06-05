.class public Lcom/android/car/LocationManagerProxy;
.super Landroid/car/ILocationManagerProxy$Stub;
.source "LocationManagerProxy.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "LocationManagerProxy"


# instance fields
.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-string v0, "LocationManagerProxy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/car/LocationManagerProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Landroid/car/ILocationManagerProxy$Stub;-><init>()V

    .line 37
    sget-boolean v0, Lcom/android/car/LocationManagerProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "LocationManagerProxy"

    const-string v1, "constructed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/car/LocationManagerProxy;->mLocationManager:Landroid/location/LocationManager;

    .line 41
    return-void
.end method


# virtual methods
.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 55
    sget-boolean v0, Lcom/android/car/LocationManagerProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting last known location for provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/car/LocationManagerProxy;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public injectLocation(Landroid/location/Location;)Z
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .line 50
    iget-object v0, p0, Lcom/android/car/LocationManagerProxy;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->injectLocation(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method public isLocationEnabled()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/car/LocationManagerProxy;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    return v0
.end method
