.class final Lcom/miniaa/launcher/data/trip/TripStore$save$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TripStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/data/trip/TripStore;->save(Landroid/content/Context;Lcom/miniaa/launcher/data/trip/TripSummary;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/datastore/preferences/core/MutablePreferences;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "prefs",
        "Landroidx/datastore/preferences/core/MutablePreferences;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miniaa.launcher.data.trip.TripStore$save$2"
    f = "TripStore.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $trip:Lcom/miniaa/launcher/data/trip/TripSummary;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/miniaa/launcher/data/trip/TripSummary;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/data/trip/TripStore$save$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->$trip:Lcom/miniaa/launcher/data/trip/TripSummary;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miniaa/launcher/data/trip/TripStore$save$2;

    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->$trip:Lcom/miniaa/launcher/data/trip/TripSummary;

    invoke-direct {v0, p0, p2}, Lcom/miniaa/launcher/data/trip/TripStore$save$2;-><init>(Lcom/miniaa/launcher/data/trip/TripSummary;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/datastore/preferences/core/MutablePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/core/MutablePreferences;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/miniaa/launcher/data/trip/TripStore$save$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->invoke(Landroidx/datastore/preferences/core/MutablePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 27
    iget v0, p0, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 28
    invoke-static {}, Lcom/miniaa/launcher/data/trip/TripStore;->access$getSTART_TIME$p()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    iget-object v1, p0, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->$trip:Lcom/miniaa/launcher/data/trip/TripSummary;

    invoke-virtual {v1}, Lcom/miniaa/launcher/data/trip/TripSummary;->getStartTimeMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lcom/miniaa/launcher/data/trip/TripStore;->access$getEND_TIME$p()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    iget-object v1, p0, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->$trip:Lcom/miniaa/launcher/data/trip/TripSummary;

    invoke-virtual {v1}, Lcom/miniaa/launcher/data/trip/TripSummary;->getEndTimeMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/miniaa/launcher/data/trip/TripStore;->access$getDURATION$p()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    iget-object v1, p0, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->$trip:Lcom/miniaa/launcher/data/trip/TripSummary;

    invoke-virtual {v1}, Lcom/miniaa/launcher/data/trip/TripSummary;->getDurationMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/miniaa/launcher/data/trip/TripStore;->access$getDISTANCE$p()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    iget-object v1, p0, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->$trip:Lcom/miniaa/launcher/data/trip/TripSummary;

    invoke-virtual {v1}, Lcom/miniaa/launcher/data/trip/TripSummary;->getDistanceKm()D

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/miniaa/launcher/data/trip/TripStore;->access$getAVG_SPEED$p()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    iget-object v1, p0, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->$trip:Lcom/miniaa/launcher/data/trip/TripSummary;

    invoke-virtual {v1}, Lcom/miniaa/launcher/data/trip/TripSummary;->getAvgSpeedKmh()D

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lcom/miniaa/launcher/data/trip/TripStore;->access$getMAX_SPEED$p()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripStore$save$2;->$trip:Lcom/miniaa/launcher/data/trip/TripSummary;

    invoke-virtual {p0}, Lcom/miniaa/launcher/data/trip/TripSummary;->getMaxSpeedKmh()D

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
