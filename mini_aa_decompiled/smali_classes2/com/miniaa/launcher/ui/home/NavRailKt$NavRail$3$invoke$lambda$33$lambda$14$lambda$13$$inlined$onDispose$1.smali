.class public final Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$invoke$lambda$33$lambda$14$lambda$13$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 NavRail.kt\ncom/miniaa/launcher/ui/home/NavRailKt$NavRail$3\n*L\n1#1,490:1\n210#2,4:491\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/compose/runtime/DisposableEffectScope$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "dispose",
        "",
        "runtime_release"
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
.field final synthetic $btReceiver$inlined:Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$btReceiver$1;

.field final synthetic $cm$inlined:Landroid/net/ConnectivityManager;

.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic $gnssCallback$inlined:Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$gnssCallback$1;

.field final synthetic $locationManager$inlined:Landroid/location/LocationManager;

.field final synthetic $netCallback$inlined:Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;Landroid/location/LocationManager;Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$gnssCallback$1;Landroid/content/Context;Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$btReceiver$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$invoke$lambda$33$lambda$14$lambda$13$$inlined$onDispose$1;->$cm$inlined:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$invoke$lambda$33$lambda$14$lambda$13$$inlined$onDispose$1;->$netCallback$inlined:Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;

    iput-object p3, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$invoke$lambda$33$lambda$14$lambda$13$$inlined$onDispose$1;->$locationManager$inlined:Landroid/location/LocationManager;

    iput-object p4, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$invoke$lambda$33$lambda$14$lambda$13$$inlined$onDispose$1;->$gnssCallback$inlined:Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$gnssCallback$1;

    iput-object p5, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$invoke$lambda$33$lambda$14$lambda$13$$inlined$onDispose$1;->$context$inlined:Landroid/content/Context;

    iput-object p6, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$invoke$lambda$33$lambda$14$lambda$13$$inlined$onDispose$1;->$btReceiver$inlined:Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$btReceiver$1;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$invoke$lambda$33$lambda$14$lambda$13$$inlined$onDispose$1;->$cm$inlined:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$invoke$lambda$33$lambda$14$lambda$13$$inlined$onDispose$1;->$netCallback$inlined:Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$netCallback$1;

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 492
    iget-object v0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$invoke$lambda$33$lambda$14$lambda$13$$inlined$onDispose$1;->$locationManager$inlined:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$invoke$lambda$33$lambda$14$lambda$13$$inlined$onDispose$1;->$gnssCallback$inlined:Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$gnssCallback$1;

    check-cast v1, Landroid/location/GnssStatus$Callback;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 493
    iget-object v0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$invoke$lambda$33$lambda$14$lambda$13$$inlined$onDispose$1;->$context$inlined:Landroid/content/Context;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$invoke$lambda$33$lambda$14$lambda$13$$inlined$onDispose$1;->$btReceiver$inlined:Lcom/miniaa/launcher/ui/home/NavRailKt$NavRail$3$1$1$1$btReceiver$1;

    check-cast p0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
