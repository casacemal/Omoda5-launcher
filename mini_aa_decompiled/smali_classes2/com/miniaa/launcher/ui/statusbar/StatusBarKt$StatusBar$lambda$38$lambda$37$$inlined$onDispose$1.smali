.class public final Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->StatusBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIZZZZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 StatusBar.kt\ncom/miniaa/launcher/ui/statusbar/StatusBarKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,490:1\n266#2,3:491\n269#2,3:495\n1#3:494\n*E\n"
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
.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic $fusedCallback$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $fusedClient$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $lm$inlined:Landroid/location/LocationManager;

.field final synthetic $shutdownReceiver$inlined:Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$shutdownReceiver$1;

.field final synthetic $systemListener$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $timeReceiver$inlined:Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$timeReceiver$1;

.field final synthetic $tripTracker$inlined:Lcom/miniaa/launcher/data/trip/TripTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$timeReceiver$1;Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$shutdownReceiver$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/miniaa/launcher/data/trip/TripTracker;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$context$inlined:Landroid/content/Context;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$timeReceiver$inlined:Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$timeReceiver$1;

    iput-object p3, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$shutdownReceiver$inlined:Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$shutdownReceiver$1;

    iput-object p4, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$fusedClient$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$systemListener$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$tripTracker$inlined:Lcom/miniaa/launcher/data/trip/TripTracker;

    iput-object p7, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$fusedCallback$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p8, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$lm$inlined:Landroid/location/LocationManager;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$context$inlined:Landroid/content/Context;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$timeReceiver$inlined:Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$timeReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$context$inlined:Landroid/content/Context;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$shutdownReceiver$inlined:Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$5$1$shutdownReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :catch_0
    iget-object v0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$fusedClient$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/location/FusedLocationProviderClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$fusedCallback$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/location/LocationCallback;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$systemListener$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$lm$inlined:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 496
    :cond_1
    iget-object p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$StatusBar$lambda$38$lambda$37$$inlined$onDispose$1;->$tripTracker$inlined:Lcom/miniaa/launcher/data/trip/TripTracker;

    invoke-virtual {p0}, Lcom/miniaa/launcher/data/trip/TripTracker;->saveOnShutdown()V

    return-void
.end method
