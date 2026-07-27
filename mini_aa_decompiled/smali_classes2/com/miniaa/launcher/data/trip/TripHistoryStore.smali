.class public final Lcom/miniaa/launcher/data/trip/TripHistoryStore;
.super Ljava/lang/Object;
.source "TripHistoryStore.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTripHistoryStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TripHistoryStore.kt\ncom/miniaa/launcher/data/trip/TripHistoryStore\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n49#2:144\n51#2:148\n46#3:145\n51#3:147\n105#4:146\n1557#5:149\n1628#5,3:150\n774#5:153\n865#5,2:154\n774#5:157\n865#5,2:158\n1#6:156\n*S KotlinDebug\n*F\n+ 1 TripHistoryStore.kt\ncom/miniaa/launcher/data/trip/TripHistoryStore\n*L\n23#1:144\n23#1:148\n23#1:145\n23#1:147\n23#1:146\n85#1:149\n85#1:150,3\n107#1:153\n107#1:154,2\n113#1:157\n113#1:158,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\u0012J$\u0010\u0013\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0015J\u0016\u0010\u0016\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0017J\u001e\u0010\u0018\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\u0012J\u0016\u0010\u0019\u001a\u00020\u00062\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0018\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0006H\u0002J\u001c\u0010\u001c\u001a\u00020\u001d2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u001e\u001a\u00020\u0008J\"\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u001e\u001a\u00020\u0008J\u0016\u0010 \u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0017J\u001e\u0010\u001e\u001a\u00020\u00082\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\"R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/miniaa/launcher/data/trip/TripHistoryStore;",
        "",
        "<init>",
        "()V",
        "TRIPS_JSON",
        "Landroidx/datastore/preferences/core/Preferences$Key;",
        "",
        "MAX_AGE_MS",
        "",
        "tripsFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lcom/miniaa/launcher/data/trip/TripSummary;",
        "context",
        "Landroid/content/Context;",
        "addTrip",
        "",
        "trip",
        "(Landroid/content/Context;Lcom/miniaa/launcher/data/trip/TripSummary;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addTrips",
        "trips",
        "(Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clear",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeTrip",
        "serialize",
        "deserialize",
        "json",
        "dailyKmForDate",
        "",
        "dayStartMs",
        "tripsForDate",
        "seedTestData",
        "year",
        "",
        "month",
        "day",
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

.field public static final INSTANCE:Lcom/miniaa/launcher/data/trip/TripHistoryStore;

.field private static final MAX_AGE_MS:J = 0x9a7ec800L

.field private static final TRIPS_JSON:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miniaa/launcher/data/trip/TripHistoryStore;

    invoke-direct {v0}, Lcom/miniaa/launcher/data/trip/TripHistoryStore;-><init>()V

    sput-object v0, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->INSTANCE:Lcom/miniaa/launcher/data/trip/TripHistoryStore;

    .line 19
    const-string v0, "trips_json"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->TRIPS_JSON:Landroidx/datastore/preferences/core/Preferences$Key;

    const/16 v0, 0x8

    sput v0, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$deserialize(Lcom/miniaa/launcher/data/trip/TripHistoryStore;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->deserialize(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTRIPS_JSON$p()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 17
    sget-object v0, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->TRIPS_JSON:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$serialize(Lcom/miniaa/launcher/data/trip/TripHistoryStore;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->serialize(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final deserialize(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 82
    const-string v1, "optString(...)"

    const-string v2, ""

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 84
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 150
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    .line 86
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 87
    new-instance v15, Lcom/miniaa/launcher/data/trip/TripSummary;

    .line 88
    const-string v6, "s"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 89
    const-string v6, "e"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 90
    const-string v6, "d"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 91
    const-string v6, "km"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 92
    const-string v6, "avg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 93
    const-string v6, "max"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 94
    const-string v6, "sl"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p0, v0

    .line 95
    const-string v0, "el"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x40

    const/16 v23, 0x0

    const/16 v19, 0x0

    move-object v5, v6

    move-object v6, v15

    move-object/from16 v24, v1

    move-object v1, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v20

    move-object/from16 v20, v5

    move-object/from16 v21, v0

    .line 87
    invoke-direct/range {v6 .. v23}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 151
    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    goto :goto_0

    .line 152
    :cond_1
    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 99
    :catch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :goto_1
    return-object v4

    .line 82
    :cond_2
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final serialize(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 65
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniaa/launcher/data/trip/TripSummary;

    .line 67
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    const-string v2, "s"

    invoke-virtual {v0}, Lcom/miniaa/launcher/data/trip/TripSummary;->getStartTimeMs()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    const-string v2, "e"

    invoke-virtual {v0}, Lcom/miniaa/launcher/data/trip/TripSummary;->getEndTimeMs()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 70
    const-string v2, "d"

    invoke-virtual {v0}, Lcom/miniaa/launcher/data/trip/TripSummary;->getDurationMs()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 71
    const-string v2, "km"

    invoke-virtual {v0}, Lcom/miniaa/launcher/data/trip/TripSummary;->getDistanceKm()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 72
    const-string v2, "avg"

    invoke-virtual {v0}, Lcom/miniaa/launcher/data/trip/TripSummary;->getAvgSpeedKmh()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 73
    const-string v2, "max"

    invoke-virtual {v0}, Lcom/miniaa/launcher/data/trip/TripSummary;->getMaxSpeedKmh()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 74
    const-string v2, "sl"

    invoke-virtual {v0}, Lcom/miniaa/launcher/data/trip/TripSummary;->getStartLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v2, "el"

    invoke-virtual {v0}, Lcom/miniaa/launcher/data/trip/TripSummary;->getEndLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final addTrip(Landroid/content/Context;Lcom/miniaa/launcher/data/trip/TripSummary;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    invoke-static {p1}, Lcom/miniaa/launcher/data/trip/TripHistoryStoreKt;->access$getTripHistoryStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance p1, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrip$2;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrip$2;-><init>(Lcom/miniaa/launcher/data/trip/TripSummary;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final addTrips(Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 40
    invoke-static {p1}, Lcom/miniaa/launcher/data/trip/TripHistoryStoreKt;->access$getTripHistoryStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance p1, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/miniaa/launcher/data/trip/TripHistoryStore$addTrips$2;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final clear(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/miniaa/launcher/data/trip/TripHistoryStoreKt;->access$getTripHistoryStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance p1, Lcom/miniaa/launcher/data/trip/TripHistoryStore$clear$2;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/miniaa/launcher/data/trip/TripHistoryStore$clear$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final dailyKmForDate(Ljava/util/List;J)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;J)D"
        }
    .end annotation

    const-string p0, "trips"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x5265c00

    add-long/2addr v0, p2

    .line 106
    check-cast p1, Ljava/lang/Iterable;

    .line 153
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/Collection;

    .line 154
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/miniaa/launcher/data/trip/TripSummary;

    .line 107
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/trip/TripSummary;->getStartTimeMs()J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gtz v5, :cond_0

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    .line 154
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_1
    check-cast p0, Ljava/util/List;

    .line 153
    check-cast p0, Ljava/lang/Iterable;

    .line 108
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 p1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miniaa/launcher/data/trip/TripSummary;

    invoke-virtual {p3}, Lcom/miniaa/launcher/data/trip/TripSummary;->getDistanceKm()D

    move-result-wide v0

    add-double/2addr p1, v0

    goto :goto_1

    :cond_2
    return-wide p1
.end method

.method public final dayStartMs(III)J
    .locals 7

    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 138
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p1, 0xe

    const/4 p2, 0x0

    .line 139
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 140
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public final removeTrip(Landroid/content/Context;Lcom/miniaa/launcher/data/trip/TripSummary;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 57
    invoke-static {p1}, Lcom/miniaa/launcher/data/trip/TripHistoryStoreKt;->access$getTripHistoryStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance p1, Lcom/miniaa/launcher/data/trip/TripHistoryStore$removeTrip$2;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/miniaa/launcher/data/trip/TripHistoryStore$removeTrip$2;-><init>(Lcom/miniaa/launcher/data/trip/TripSummary;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final seedTestData(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 135
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/miniaa/launcher/data/trip/TripHistoryStore$seedTestData$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/miniaa/launcher/data/trip/TripHistoryStore$seedTestData$1;

    iget v3, v2, Lcom/miniaa/launcher/data/trip/TripHistoryStore$seedTestData$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/miniaa/launcher/data/trip/TripHistoryStore$seedTestData$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/miniaa/launcher/data/trip/TripHistoryStore$seedTestData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/miniaa/launcher/data/trip/TripHistoryStore$seedTestData$1;

    invoke-direct {v2, v0, v1}, Lcom/miniaa/launcher/data/trip/TripHistoryStore$seedTestData$1;-><init>(Lcom/miniaa/launcher/data/trip/TripHistoryStore;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/miniaa/launcher/data/trip/TripHistoryStore$seedTestData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 117
    iget v4, v2, Lcom/miniaa/launcher/data/trip/TripHistoryStore$seedTestData$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lcom/miniaa/launcher/data/trip/TripHistoryStore$seedTestData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v1, 0x7

    .line 122
    new-array v4, v1, [Lcom/miniaa/launcher/data/trip/TripSummary;

    new-instance v26, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object/from16 v8, v26

    const/4 v15, 0x2

    int-to-long v9, v15

    const-wide/32 v120, 0x36ee80

    move-wide/from16 v122, v120

    move-wide/from16 v104, v120

    move-wide/from16 v86, v120

    move-wide/from16 v68, v120

    move-wide/from16 v50, v120

    move-wide/from16 v32, v120

    move-wide/from16 v13, v120

    mul-long v9, v9, v120

    sub-long v9, v6, v9

    move-wide/from16 v46, v9

    move-wide/from16 v28, v9

    sub-long v11, v6, v120

    move-wide/from16 v48, v11

    move-wide/from16 v30, v11

    const/16 v24, 0x40

    const/16 v25, 0x0

    const-wide v16, 0x4018cccccccccccdL    # 6.2

    move/from16 v63, v15

    move-wide/from16 v15, v16

    const-wide v17, 0x4044800000000000L    # 41.0

    const-wide v19, 0x404f400000000000L    # 62.5

    const/16 v21, 0x0

    const-string v22, "Home"

    const-string v23, "Office"

    invoke-direct/range {v8 .. v25}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v8, 0x0

    aput-object v26, v4, v8

    .line 123
    new-instance v8, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object/from16 v27, v8

    const/16 v43, 0x40

    const/16 v44, 0x0

    const-wide v34, 0x4018cccccccccccdL    # 6.2

    const-wide v36, 0x4044800000000000L    # 41.0

    const-wide v38, 0x404f400000000000L    # 62.5

    const/16 v40, 0x0

    const-string v41, "Home"

    const-string v42, "Office"

    invoke-direct/range {v27 .. v44}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v8, v4, v5

    .line 124
    new-instance v8, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object/from16 v45, v8

    const/16 v61, 0x40

    const/16 v62, 0x0

    const-wide v52, 0x4018cccccccccccdL    # 6.2

    const-wide v54, 0x4044800000000000L    # 41.0

    const-wide v56, 0x404f400000000000L    # 62.5

    const/16 v58, 0x0

    const-string v59, "Home"

    const-string v60, "Office"

    invoke-direct/range {v45 .. v62}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v8, v4, v63

    .line 126
    new-instance v8, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object/from16 v63, v8

    const/4 v9, 0x5

    int-to-long v10, v9

    mul-long v10, v10, v120

    sub-long v64, v6, v10

    move-wide/from16 v82, v64

    const/4 v10, 0x4

    int-to-long v11, v10

    mul-long v11, v11, v120

    sub-long v66, v6, v11

    move-wide/from16 v84, v66

    const/16 v79, 0x40

    const/16 v80, 0x0

    const-wide/high16 v70, 0x4029000000000000L    # 12.5

    const-wide v72, 0x4046800000000000L    # 45.0

    const-wide v74, 0x4051800000000000L    # 70.0

    const/16 v76, 0x0

    const-string v77, "Office"

    const-string v78, "Gym"

    invoke-direct/range {v63 .. v80}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v11, 0x3

    aput-object v8, v4, v11

    .line 127
    new-instance v8, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object/from16 v81, v8

    const/16 v97, 0x40

    const/16 v98, 0x0

    const-wide/high16 v88, 0x4029000000000000L    # 12.5

    const-wide v90, 0x4046800000000000L    # 45.0

    const-wide v92, 0x4051800000000000L    # 70.0

    const/16 v94, 0x0

    const-string v95, "Office"

    const-string v96, "Gym"

    invoke-direct/range {v81 .. v98}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v8, v4, v10

    .line 129
    new-instance v8, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object/from16 v99, v8

    const/16 v10, 0x8

    int-to-long v10, v10

    mul-long v10, v10, v120

    sub-long v100, v6, v10

    int-to-long v10, v1

    mul-long v10, v10, v120

    sub-long v102, v6, v10

    const/16 v115, 0x40

    const/16 v116, 0x0

    const-wide v106, 0x4008cccccccccccdL    # 3.1

    const-wide/high16 v108, 0x4039000000000000L    # 25.0

    const-wide/high16 v110, 0x4044000000000000L    # 40.0

    const/16 v112, 0x0

    const-string v113, "Mall"

    const-string v114, "Home"

    invoke-direct/range {v99 .. v116}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v8, v4, v9

    .line 130
    new-instance v1, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object/from16 v117, v1

    const/16 v8, 0x1a

    int-to-long v8, v8

    mul-long v8, v8, v120

    sub-long v118, v6, v8

    const/16 v8, 0x19

    int-to-long v8, v8

    mul-long v8, v8, v120

    sub-long v120, v6, v8

    const/16 v133, 0x40

    const/16 v134, 0x0

    const-wide v124, 0x4032b33333333333L    # 18.7

    const-wide v126, 0x404b800000000000L    # 55.0

    const-wide v128, 0x4056800000000000L    # 90.0

    const/16 v130, 0x0

    const-string v131, "Home"

    const-string v132, "Airport"

    invoke-direct/range {v117 .. v134}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x6

    aput-object v1, v4, v6

    .line 120
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 132
    iput-object v1, v2, Lcom/miniaa/launcher/data/trip/TripHistoryStore$seedTestData$1;->L$0:Ljava/lang/Object;

    iput v5, v2, Lcom/miniaa/launcher/data/trip/TripHistoryStore$seedTestData$1;->label:I

    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v1, v2}, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->addTrips(Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    move-object v0, v1

    .line 133
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Seeded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " test trips (including duplicates)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TripHistory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final tripsFlow(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;>;"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcom/miniaa/launcher/data/trip/TripHistoryStoreKt;->access$getTripHistoryStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    invoke-interface {p0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    .line 146
    new-instance p1, Lcom/miniaa/launcher/data/trip/TripHistoryStore$tripsFlow$$inlined$map$1;

    invoke-direct {p1, p0}, Lcom/miniaa/launcher/data/trip/TripHistoryStore$tripsFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    return-object p1
.end method

.method public final tripsForDate(Ljava/util/List;J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;J)",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;"
        }
    .end annotation

    const-string p0, "trips"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x5265c00

    add-long/2addr v0, p2

    .line 113
    check-cast p1, Ljava/lang/Iterable;

    .line 157
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/Collection;

    .line 158
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/miniaa/launcher/data/trip/TripSummary;

    .line 113
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/trip/TripSummary;->getStartTimeMs()J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gtz v5, :cond_0

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    .line 158
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    check-cast p0, Ljava/util/List;

    return-object p0
.end method
