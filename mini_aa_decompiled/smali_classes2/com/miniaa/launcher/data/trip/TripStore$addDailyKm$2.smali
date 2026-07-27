.class final Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TripStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/data/trip/TripStore;->addDailyKm(Landroid/content/Context;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.miniaa.launcher.data.trip.TripStore$addDailyKm$2"
    f = "TripStore.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $km:D

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(DLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;->$km:D

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;

    iget-wide v1, p0, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;->$km:D

    invoke-direct {v0, v1, v2, p2}, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;-><init>(DLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;->invoke(Landroidx/datastore/preferences/core/MutablePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 51
    iget v0, p0, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 52
    sget-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->INSTANCE:Lcom/miniaa/launcher/data/trip/TripStore;

    invoke-static {v0}, Lcom/miniaa/launcher/data/trip/TripStore;->access$todayStart(Lcom/miniaa/launcher/data/trip/TripStore;)J

    move-result-wide v0

    .line 53
    invoke-static {}, Lcom/miniaa/launcher/data/trip/TripStore;->access$getDAILY_DATE$p()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 57
    invoke-static {}, Lcom/miniaa/launcher/data/trip/TripStore;->access$getDAILY_KM$p()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    iget-wide v3, p0, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;->$km:D

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 58
    invoke-static {}, Lcom/miniaa/launcher/data/trip/TripStore;->access$getDAILY_DATE$p()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object p0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 61
    :cond_1
    invoke-static {}, Lcom/miniaa/launcher/data/trip/TripStore;->access$getDAILY_KM$p()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    .line 62
    :goto_1
    invoke-static {}, Lcom/miniaa/launcher/data/trip/TripStore;->access$getDAILY_KM$p()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    iget-wide v3, p0, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;->$km:D

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 64
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 51
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
