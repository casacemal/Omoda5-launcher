.class public final Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$gnssCallback$1;
.super Landroid/location/GnssStatus$Callback;
.source "NavRail.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$gnssCallback$1",
        "Landroid/location/GnssStatus$Callback;",
        "onStarted",
        "",
        "onStopped",
        "onSatelliteStatusChanged",
        "status",
        "Landroid/location/GnssStatus;",
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
.field final synthetic $gpsStrength$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $locationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableIntState;Landroid/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$gnssCallback$1;->$gpsStrength$delegate:Landroidx/compose/runtime/MutableIntState;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$gnssCallback$1;->$locationManager:Landroid/location/LocationManager;

    .line 160
    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 5

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$gnssCallback$1;->$locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 170
    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$gnssCallback$1;->$gpsStrength$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-static {p0, v1}, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3;->access$invoke$lambda$33$lambda$8(Landroidx/compose/runtime/MutableIntState;I)V

    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 175
    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_2
    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$gnssCallback$1;->$gpsStrength$delegate:Landroidx/compose/runtime/MutableIntState;

    const/16 p1, 0xc

    const/4 v0, 0x5

    if-lt v3, p1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    const/16 p1, 0x8

    if-lt v3, p1, :cond_4

    const/4 v1, 0x4

    goto :goto_2

    :cond_4
    const/4 p1, 0x3

    if-lt v3, v0, :cond_5

    :goto_1
    move v1, p1

    goto :goto_2

    :cond_5
    if-lt v3, p1, :cond_6

    const/4 v1, 0x2

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    if-lt v3, p1, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    invoke-static {p0, v1}, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3;->access$invoke$lambda$33$lambda$8(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method

.method public onStopped()V
    .locals 1

    .line 166
    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$gnssCallback$1;->$gpsStrength$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3;->access$invoke$lambda$33$lambda$8(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method
