.class public final Lcom/miniaa/launcher/data/trip/TripStore;
.super Ljava/lang/Object;
.source "TripStore.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0002\u0010\u0015J\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0011\u001a\u00020\u0012H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u001e\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u001aJ\u001e\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0008\u0010\u001e\u001a\u00020\u0006H\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/miniaa/launcher/data/trip/TripStore;",
        "",
        "<init>",
        "()V",
        "START_TIME",
        "Landroidx/datastore/preferences/core/Preferences$Key;",
        "",
        "END_TIME",
        "DURATION",
        "DISTANCE",
        "",
        "AVG_SPEED",
        "MAX_SPEED",
        "DAILY_KM",
        "DAILY_DATE",
        "save",
        "",
        "context",
        "Landroid/content/Context;",
        "trip",
        "Lcom/miniaa/launcher/data/trip/TripSummary;",
        "(Landroid/content/Context;Lcom/miniaa/launcher/data/trip/TripSummary;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "load",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addDailyKm",
        "km",
        "(Landroid/content/Context;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "saveDailyKm",
        "totalKm",
        "getDailyKm",
        "todayStart",
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

.field private static final AVG_SPEED:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAILY_DATE:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAILY_KM:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final DISTANCE:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final END_TIME:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/miniaa/launcher/data/trip/TripStore;

.field private static final MAX_SPEED:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final START_TIME:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miniaa/launcher/data/trip/TripStore;

    invoke-direct {v0}, Lcom/miniaa/launcher/data/trip/TripStore;-><init>()V

    sput-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->INSTANCE:Lcom/miniaa/launcher/data/trip/TripStore;

    .line 17
    const-string v0, "start_time"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->longKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->START_TIME:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 18
    const-string v0, "end_time"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->longKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->END_TIME:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 19
    const-string v0, "duration"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->longKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->DURATION:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 20
    const-string v0, "distance"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->doubleKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->DISTANCE:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 21
    const-string v0, "avg_speed"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->doubleKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->AVG_SPEED:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 22
    const-string v0, "max_speed"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->doubleKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->MAX_SPEED:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 23
    const-string v0, "daily_km"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->doubleKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->DAILY_KM:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 24
    const-string v0, "daily_date"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->longKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->DAILY_DATE:Landroidx/datastore/preferences/core/Preferences$Key;

    const/16 v0, 0x8

    sput v0, Lcom/miniaa/launcher/data/trip/TripStore;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAVG_SPEED$p()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 15
    sget-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->AVG_SPEED:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getDAILY_DATE$p()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 15
    sget-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->DAILY_DATE:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getDAILY_KM$p()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 15
    sget-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->DAILY_KM:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getDISTANCE$p()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 15
    sget-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->DISTANCE:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getDURATION$p()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 15
    sget-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->DURATION:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getEND_TIME$p()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 15
    sget-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->END_TIME:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getMAX_SPEED$p()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 15
    sget-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->MAX_SPEED:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getSTART_TIME$p()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 15
    sget-object v0, Lcom/miniaa/launcher/data/trip/TripStore;->START_TIME:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$todayStart(Lcom/miniaa/launcher/data/trip/TripStore;)J
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/miniaa/launcher/data/trip/TripStore;->todayStart()J

    move-result-wide v0

    return-wide v0
.end method

.method private final todayStart()J
    .locals 2

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 84
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 85
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 86
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 87
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final addDailyKm(Landroid/content/Context;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "D",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/miniaa/launcher/data/trip/TripStoreKt;->access$getTripStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance p1, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Lcom/miniaa/launcher/data/trip/TripStore$addDailyKm$2;-><init>(DLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1, p4}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getDailyKm(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/miniaa/launcher/data/trip/TripStore$getDailyKm$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miniaa/launcher/data/trip/TripStore$getDailyKm$1;

    iget v1, v0, Lcom/miniaa/launcher/data/trip/TripStore$getDailyKm$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/miniaa/launcher/data/trip/TripStore$getDailyKm$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/miniaa/launcher/data/trip/TripStore$getDailyKm$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miniaa/launcher/data/trip/TripStore$getDailyKm$1;

    invoke-direct {v0, p0, p2}, Lcom/miniaa/launcher/data/trip/TripStore$getDailyKm$1;-><init>(Lcom/miniaa/launcher/data/trip/TripStore;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/miniaa/launcher/data/trip/TripStore$getDailyKm$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 75
    iget v2, v0, Lcom/miniaa/launcher/data/trip/TripStore$getDailyKm$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/miniaa/launcher/data/trip/TripStore$getDailyKm$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/miniaa/launcher/data/trip/TripStore;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    invoke-static {p1}, Lcom/miniaa/launcher/data/trip/TripStoreKt;->access$getTripStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p0, v0, Lcom/miniaa/launcher/data/trip/TripStore$getDailyKm$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/miniaa/launcher/data/trip/TripStore$getDailyKm$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 75
    :cond_3
    :goto_1
    check-cast p2, Landroidx/datastore/preferences/core/Preferences;

    .line 77
    sget-object p1, Lcom/miniaa/launcher/data/trip/TripStore;->DAILY_DATE:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x0

    .line 78
    :goto_2
    invoke-direct {p0}, Lcom/miniaa/launcher/data/trip/TripStore;->todayStart()J

    move-result-wide p0

    cmp-long p0, v0, p0

    const-wide/16 v0, 0x0

    if-ltz p0, :cond_5

    sget-object p0, Lcom/miniaa/launcher/data/trip/TripStore;->DAILY_KM:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p2, p0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :cond_5
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public final load(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/miniaa/launcher/data/trip/TripStore$load$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/miniaa/launcher/data/trip/TripStore$load$1;

    iget v2, v1, Lcom/miniaa/launcher/data/trip/TripStore$load$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/miniaa/launcher/data/trip/TripStore$load$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/miniaa/launcher/data/trip/TripStore$load$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/miniaa/launcher/data/trip/TripStore$load$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/miniaa/launcher/data/trip/TripStore$load$1;-><init>(Lcom/miniaa/launcher/data/trip/TripStore;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/miniaa/launcher/data/trip/TripStore$load$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 37
    iget v3, v1, Lcom/miniaa/launcher/data/trip/TripStore$load$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    invoke-static/range {p1 .. p1}, Lcom/miniaa/launcher/data/trip/TripStoreKt;->access$getTripStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput v4, v1, Lcom/miniaa/launcher/data/trip/TripStore$load$1;->label:I

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3

    return-object v2

    .line 37
    :cond_3
    :goto_1
    check-cast v0, Landroidx/datastore/preferences/core/Preferences;

    .line 39
    sget-object v1, Lcom/miniaa/launcher/data/trip/TripStore;->START_TIME:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 40
    new-instance v1, Lcom/miniaa/launcher/data/trip/TripSummary;

    .line 42
    sget-object v2, Lcom/miniaa/launcher/data/trip/TripStore;->END_TIME:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_2

    :cond_4
    move-wide v7, v5

    .line 43
    :goto_2
    sget-object v2, Lcom/miniaa/launcher/data/trip/TripStore;->DURATION:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_5
    move-wide v9, v5

    .line 44
    sget-object v2, Lcom/miniaa/launcher/data/trip/TripStore;->DISTANCE:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    goto :goto_3

    :cond_6
    move-wide v11, v5

    .line 45
    :goto_3
    sget-object v2, Lcom/miniaa/launcher/data/trip/TripStore;->AVG_SPEED:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    goto :goto_4

    :cond_7
    move-wide v13, v5

    .line 46
    :goto_4
    sget-object v2, Lcom/miniaa/launcher/data/trip/TripStore;->MAX_SPEED:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :cond_8
    move-wide/from16 v20, v5

    const/16 v18, 0x1c0

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v1

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move-wide v11, v13

    move-wide/from16 v13, v20

    .line 40
    invoke-direct/range {v2 .. v19}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final save(Landroid/content/Context;Lcom/miniaa/launcher/data/trip/TripSummary;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 27
    invoke-static {p1}, Lcom/miniaa/launcher/data/trip/TripStoreKt;->access$getTripStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance p1, Lcom/miniaa/launcher/data/trip/TripStore$save$2;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/miniaa/launcher/data/trip/TripStore$save$2;-><init>(Lcom/miniaa/launcher/data/trip/TripSummary;Lkotlin/coroutines/Continuation;)V

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

.method public final saveDailyKm(Landroid/content/Context;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "D",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 69
    invoke-static {p1}, Lcom/miniaa/launcher/data/trip/TripStoreKt;->access$getTripStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance p1, Lcom/miniaa/launcher/data/trip/TripStore$saveDailyKm$2;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Lcom/miniaa/launcher/data/trip/TripStore$saveDailyKm$2;-><init>(DLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1, p4}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
