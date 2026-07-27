.class final Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TripHistoryStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/data/trip/TripHistoryStore;->addTrips(Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTripHistoryStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TripHistoryStore.kt\ncom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,143:1\n774#2:144\n865#2,2:145\n1062#2:147\n*S KotlinDebug\n*F\n+ 1 TripHistoryStore.kt\ncom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2\n*L\n44#1:144\n44#1:145,2\n45#1:147\n*E\n"
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
    c = "com.miniaa.launcher.data.trip.TripHistoryStore$addTrips$2"
    f = "TripHistoryStore.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $trips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;->$trips:Ljava/util/List;

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

    new-instance v0, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;

    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;->$trips:Ljava/util/List;

    invoke-direct {v0, p0, p2}, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;->invoke(Landroidx/datastore/preferences/core/MutablePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 40
    iget v0, p0, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 41
    sget-object v0, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->INSTANCE:Lcom/miniaa/launcher/data/trip/TripHistoryStore;

    invoke-static {}, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->access$getTRIPS_JSON$p()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->access$deserialize(Lcom/miniaa/launcher/data/trip/TripHistoryStore;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x9a7ec800L

    sub-long/2addr v1, v3

    .line 43
    check-cast v0, Ljava/util/Collection;

    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;->$trips:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 145
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miniaa/launcher/data/trip/TripSummary;

    .line 44
    invoke-virtual {v4}, Lcom/miniaa/launcher/data/trip/TripSummary;->getStartTimeMs()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-ltz v4, :cond_0

    .line 145
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 144
    check-cast v0, Ljava/lang/Iterable;

    .line 147
    new-instance p0, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2$invokeSuspend$$inlined$sortedByDescending$1;

    invoke-direct {p0}, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2$invokeSuspend$$inlined$sortedByDescending$1;-><init>()V

    check-cast p0, Ljava/util/Comparator;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 46
    invoke-static {}, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->access$getTRIPS_JSON$p()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sget-object v1, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->INSTANCE:Lcom/miniaa/launcher/data/trip/TripHistoryStore;

    invoke-static {v1, p0}, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->access$serialize(Lcom/miniaa/launcher/data/trip/TripHistoryStore;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 47
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 40
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
