.class public Landroid/car/test/CarLocationTestHelper;
.super Ljava/lang/Object;
.source "CarLocationTestHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectLocation(Landroid/location/Location;Landroid/content/Context;)Z
    .locals 1

    const-string v0, "location"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 40
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->injectLocation(Landroid/location/Location;)Z

    move-result p0

    return p0
.end method
