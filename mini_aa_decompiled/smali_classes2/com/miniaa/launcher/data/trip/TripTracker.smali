.class public final Lcom/miniaa/launcher/data/trip/TripTracker;
.super Ljava/lang/Object;
.source "TripTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniaa/launcher/data/trip/TripTracker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 -2\u00020\u0001:\u0001-B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020#J\u000e\u0010(\u001a\u00020&2\u0006\u0010)\u001a\u00020!J\u0006\u0010*\u001a\u00020&J\u000e\u0010+\u001a\u00020#2\u0006\u0010,\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000eR\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/miniaa/launcher/data/trip/TripTracker;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "_currentTrip",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/miniaa/launcher/data/trip/TripSummary;",
        "currentTrip",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getCurrentTrip",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_lastTrip",
        "lastTrip",
        "getLastTrip",
        "_dailyKm",
        "",
        "dailyKm",
        "getDailyKm",
        "tripActive",
        "",
        "startTimeMs",
        "",
        "lastMovingTimeMs",
        "totalDistanceM",
        "maxSpeedMs",
        "",
        "speedSamples",
        "",
        "lastLocation",
        "Landroid/location/Location;",
        "tripStartLocation",
        "",
        "tripEndLocation",
        "updateLocationName",
        "",
        "name",
        "onLocationUpdate",
        "location",
        "saveOnShutdown",
        "formatTripSummary",
        "trip",
        "Companion",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/miniaa/launcher/data/trip/TripTracker$Companion;

.field private static final STOP_THRESHOLD_MS:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "TripTracker"


# instance fields
.field private final _currentTrip:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;"
        }
    .end annotation
.end field

.field private final _dailyKm:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final _lastTrip:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final currentTrip:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;"
        }
    .end annotation
.end field

.field private final dailyKm:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private lastLocation:Landroid/location/Location;

.field private lastMovingTimeMs:J

.field private final lastTrip:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;"
        }
    .end annotation
.end field

.field private maxSpeedMs:F

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private speedSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private startTimeMs:J

.field private totalDistanceM:D

.field private tripActive:Z

.field private tripEndLocation:Ljava/lang/String;

.field private tripStartLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miniaa/launcher/data/trip/TripTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miniaa/launcher/data/trip/TripTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miniaa/launcher/data/trip/TripTracker;->Companion:Lcom/miniaa/launcher/data/trip/TripTracker$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/miniaa/launcher/data/trip/TripTracker;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->context:Landroid/content/Context;

    .line 33
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    iput-object v2, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 35
    new-instance v1, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object v3, v1

    const/16 v19, 0x1ff

    const/16 v20, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v3 .. v20}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->_currentTrip:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 36
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->currentTrip:Lkotlinx/coroutines/flow/StateFlow;

    .line 38
    new-instance v1, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object v3, v1

    invoke-direct/range {v3 .. v20}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->_lastTrip:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 39
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->lastTrip:Lkotlinx/coroutines/flow/StateFlow;

    const-wide/16 v3, 0x0

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->_dailyKm:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 42
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->dailyKm:Lkotlinx/coroutines/flow/StateFlow;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->speedSamples:Ljava/util/List;

    .line 51
    const-string v1, ""

    iput-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripStartLocation:Ljava/lang/String;

    .line 52
    iput-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripEndLocation:Ljava/lang/String;

    .line 66
    new-instance v1, Lcom/miniaa/launcher/data/trip/TripTracker$1;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/miniaa/launcher/data/trip/TripTracker$1;-><init>(Lcom/miniaa/launcher/data/trip/TripTracker;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/miniaa/launcher/data/trip/TripTracker;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripTracker;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$get_dailyKm$p(Lcom/miniaa/launcher/data/trip/TripTracker;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripTracker;->_dailyKm:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_lastTrip$p(Lcom/miniaa/launcher/data/trip/TripTracker;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripTracker;->_lastTrip:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method


# virtual methods
.method public final formatTripSummary(Lcom/miniaa/launcher/data/trip/TripSummary;)Ljava/lang/String;
    .locals 4

    const-string p0, "trip"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/trip/TripSummary;->getDurationMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/trip/TripSummary;->getDistanceKm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/trip/TripSummary;->getDurationMs()J

    move-result-wide v0

    const p0, 0xea60

    int-to-long v2, p0

    div-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v0, 0x3c

    if-lt p0, v0, :cond_1

    .line 216
    div-int/lit8 v1, p0, 0x3c

    rem-int/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "m"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-lez p0, :cond_2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "min"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 218
    :cond_2
    const-string p0, "<1min"

    .line 221
    :goto_0
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/trip/TripSummary;->getDistanceKm()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double v0, v0, v2

    const-string v1, "km"

    if-ltz v0, :cond_3

    .line 222
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/trip/TripSummary;->getDistanceKm()D

    move-result-wide v2

    double-to-int v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 224
    :cond_3
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/trip/TripSummary;->getDistanceKm()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%.1f"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_1
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/trip/TripSummary;->getAvgSpeedKmh()D

    move-result-wide v1

    double-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " avg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/trip/TripSummary;->getMaxSpeedKmh()D

    move-result-wide v2

    double-to-int p1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " max"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "  \u00b7  "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentTrip()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripTracker;->currentTrip:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getDailyKm()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripTracker;->dailyKm:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getLastTrip()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripTracker;->lastTrip:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final onLocationUpdate(Landroid/location/Location;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "location"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const v4, 0x40666666    # 3.6f

    mul-float/2addr v4, v2

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v4, v4, v5

    .line 91
    const-string v5, "TripTracker"

    const/4 v6, 0x0

    const-wide v10, 0x408f400000000000L    # 1000.0

    const-wide v16, 0x400ccccccccccccdL    # 3.6

    if-lez v4, :cond_5

    .line 92
    iget-boolean v4, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripActive:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    .line 93
    iput-boolean v4, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripActive:Z

    .line 94
    iput-wide v8, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->startTimeMs:J

    const-wide/16 v12, 0x0

    .line 95
    iput-wide v12, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->totalDistanceM:D

    .line 96
    iput v3, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->maxSpeedMs:F

    .line 97
    iget-object v4, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->speedSamples:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 98
    iput-object v6, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->lastLocation:Landroid/location/Location;

    .line 99
    iget-object v4, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripEndLocation:Ljava/lang/String;

    iput-object v4, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripStartLocation:Ljava/lang/String;

    .line 100
    const-string v4, ""

    iput-object v4, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripEndLocation:Ljava/lang/String;

    .line 101
    const-string v4, "Trip started"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    iput-wide v8, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->lastMovingTimeMs:J

    .line 106
    iget-object v4, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->lastLocation:Landroid/location/Location;

    if-eqz v4, :cond_2

    .line 108
    invoke-virtual {v4, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    const/high16 v5, 0x43fa0000    # 500.0f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    .line 110
    iget-wide v5, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->totalDistanceM:D

    float-to-double v12, v4

    add-double/2addr v5, v12

    iput-wide v5, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->totalDistanceM:D

    .line 112
    iget-object v4, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->_dailyKm:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    div-double/2addr v12, v10

    add-double/2addr v5, v12

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 115
    :cond_2
    iput-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->lastLocation:Landroid/location/Location;

    .line 117
    iget v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->maxSpeedMs:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    iput v2, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->maxSpeedMs:F

    .line 118
    :cond_3
    iget-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->speedSamples:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-wide v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->startTimeMs:J

    sub-long v1, v8, v1

    .line 121
    iget-object v4, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->speedSamples:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v3, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->speedSamples:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v3

    double-to-float v3, v3

    .line 123
    :cond_4
    iget-object v4, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->_currentTrip:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v14, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object v5, v14

    .line 124
    iget-wide v6, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->startTimeMs:J

    .line 127
    iget-wide v12, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->totalDistanceM:D

    div-double/2addr v12, v10

    float-to-double v10, v3

    mul-double v10, v10, v16

    move-object v3, v14

    move-wide v14, v10

    .line 129
    iget v0, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->maxSpeedMs:F

    float-to-double v10, v0

    mul-double v16, v16, v10

    const/16 v21, 0x180

    const/16 v22, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide v10, v1

    .line 123
    invoke-direct/range {v5 .. v22}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 132
    :cond_5
    iget-boolean v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripActive:Z

    if-eqz v1, :cond_9

    .line 133
    iget-wide v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->lastMovingTimeMs:J

    sub-long v12, v8, v1

    const-wide/32 v14, 0xea60

    cmp-long v4, v12, v14

    if-ltz v4, :cond_7

    .line 134
    iget-wide v12, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->totalDistanceM:D

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_7

    .line 135
    iget-wide v7, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->startTimeMs:J

    sub-long v23, v1, v7

    .line 136
    iget-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->speedSamples:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->speedSamples:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v1

    double-to-float v3, v1

    .line 138
    :cond_6
    new-instance v1, Lcom/miniaa/launcher/data/trip/TripSummary;

    .line 139
    iget-wide v7, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->startTimeMs:J

    .line 140
    iget-wide v12, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->lastMovingTimeMs:J

    .line 142
    iget-wide v14, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->totalDistanceM:D

    div-double v25, v14, v10

    float-to-double v2, v3

    mul-double v27, v2, v16

    .line 144
    iget v2, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->maxSpeedMs:F

    float-to-double v2, v2

    mul-double v29, v2, v16

    .line 146
    iget-object v2, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripStartLocation:Ljava/lang/String;

    .line 147
    iget-object v3, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripEndLocation:Ljava/lang/String;

    const/16 v31, 0x0

    move-object/from16 v18, v1

    move-wide/from16 v19, v7

    move-wide/from16 v21, v12

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    .line 138
    invoke-direct/range {v18 .. v33}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->_lastTrip:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 151
    iget-object v2, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->_currentTrip:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v3, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object v7, v3

    const/16 v23, 0x1ff

    const/16 v24, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v7 .. v24}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 152
    iput-boolean v2, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripActive:Z

    .line 155
    iget-object v7, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/miniaa/launcher/data/trip/TripTracker$onLocationUpdate$1;

    invoke-direct {v2, v0, v1, v6}, Lcom/miniaa/launcher/data/trip/TripTracker$onLocationUpdate$1;-><init>(Lcom/miniaa/launcher/data/trip/TripTracker;Lcom/miniaa/launcher/data/trip/TripSummary;Lkotlin/coroutines/Continuation;)V

    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 161
    invoke-virtual {v0, v1}, Lcom/miniaa/launcher/data/trip/TripTracker;->formatTripSummary(Lcom/miniaa/launcher/data/trip/TripSummary;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trip ended: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 163
    :cond_7
    iget-wide v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->startTimeMs:J

    sub-long v1, v8, v1

    .line 164
    iget-object v4, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->speedSamples:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v3, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->speedSamples:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v3

    double-to-float v3, v3

    .line 165
    :cond_8
    iget-object v4, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->_currentTrip:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v14, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object v5, v14

    .line 166
    iget-wide v6, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->startTimeMs:J

    .line 169
    iget-wide v12, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->totalDistanceM:D

    div-double/2addr v12, v10

    float-to-double v10, v3

    mul-double v10, v10, v16

    move-object v3, v14

    move-wide v14, v10

    .line 171
    iget v0, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->maxSpeedMs:F

    float-to-double v10, v0

    mul-double v16, v16, v10

    const/16 v21, 0x180

    const/16 v22, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide v10, v1

    .line 165
    invoke-direct/range {v5 .. v22}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public final saveOnShutdown()V
    .locals 22

    move-object/from16 v0, p0

    .line 180
    iget-boolean v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripActive:Z

    if-eqz v1, :cond_2

    iget-wide v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->totalDistanceM:D

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    goto/16 :goto_1

    .line 182
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 183
    iget-wide v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->startTimeMs:J

    sub-long v7, v5, v1

    .line 184
    iget-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->speedSamples:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->speedSamples:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 186
    :goto_0
    new-instance v15, Lcom/miniaa/launcher/data/trip/TripSummary;

    .line 187
    iget-wide v3, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->startTimeMs:J

    .line 190
    iget-wide v9, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->totalDistanceM:D

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double/2addr v9, v11

    float-to-double v1, v1

    const-wide v11, 0x400ccccccccccccdL    # 3.6

    mul-double v13, v1, v11

    .line 192
    iget v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->maxSpeedMs:F

    float-to-double v1, v1

    mul-double v16, v1, v11

    .line 194
    iget-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripStartLocation:Ljava/lang/String;

    .line 195
    iget-object v11, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripEndLocation:Ljava/lang/String;

    const/16 v18, 0x0

    move-object v2, v15

    move-object/from16 v19, v11

    move-wide v11, v13

    move-wide/from16 v13, v16

    move-object/from16 v20, v15

    move/from16 v15, v18

    move-object/from16 v16, v1

    move-object/from16 v17, v19

    .line 186
    invoke-direct/range {v2 .. v17}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->_lastTrip:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v2, v20

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 199
    iget-object v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->_currentTrip:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v14, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object v3, v14

    const/16 v19, 0x1ff

    const/16 v20, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v21, v14

    move-wide v14, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v3 .. v20}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v21

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 200
    iput-boolean v1, v0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripActive:Z

    .line 203
    new-instance v1, Lcom/miniaa/launcher/data/trip/TripTracker$saveOnShutdown$1;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/miniaa/launcher/data/trip/TripTracker$saveOnShutdown$1;-><init>(Lcom/miniaa/launcher/data/trip/TripTracker;Lcom/miniaa/launcher/data/trip/TripSummary;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    invoke-static {v3, v1, v4, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v0, v2}, Lcom/miniaa/launcher/data/trip/TripTracker;->formatTripSummary(Lcom/miniaa/launcher/data/trip/TripSummary;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trip saved on shutdown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TripTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateLocationName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 57
    iget-boolean v0, p0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripStartLocation:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iput-object p1, p0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripStartLocation:Ljava/lang/String;

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/miniaa/launcher/data/trip/TripTracker;->tripEndLocation:Ljava/lang/String;

    :cond_1
    return-void
.end method
