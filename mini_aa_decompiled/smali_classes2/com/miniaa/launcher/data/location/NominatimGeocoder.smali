.class public final Lcom/miniaa/launcher/data/location/NominatimGeocoder;
.super Ljava/lang/Object;
.source "NominatimGeocoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0007\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0008J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0008H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/miniaa/launcher/data/location/NominatimGeocoder;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "BASE_URL",
        "reverse",
        "Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;",
        "lat",
        "",
        "lon",
        "(DDLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "formatLocation",
        "result",
        "formatFromFields",
        "NominatimResult",
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
.field public static final $stable:I = 0x0

.field private static final BASE_URL:Ljava/lang/String; = "https://nominatim.openstreetmap.org/reverse"

.field public static final INSTANCE:Lcom/miniaa/launcher/data/location/NominatimGeocoder;

.field private static final TAG:Ljava/lang/String; = "Nominatim"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miniaa/launcher/data/location/NominatimGeocoder;

    invoke-direct {v0}, Lcom/miniaa/launcher/data/location/NominatimGeocoder;-><init>()V

    sput-object v0, Lcom/miniaa/launcher/data/location/NominatimGeocoder;->INSTANCE:Lcom/miniaa/launcher/data/location/NominatimGeocoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final formatFromFields(Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;)Ljava/lang/String;
    .locals 3

    .line 91
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getSuburb()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getVillage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getTown()Ljava/lang/String;

    move-result-object p0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getRoad()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 95
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "Road"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    const-string v1, "Highway"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getRoad()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getTown()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getTown()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getTown()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getCounty()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getCounty()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_5

    if-eqz v0, :cond_5

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    if-nez p0, :cond_a

    .line 106
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getRoad()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getRoad()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 107
    :cond_6
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getCity()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getCity()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 108
    :cond_7
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getTown()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getTown()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 109
    :cond_8
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getCounty()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getCounty()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 110
    :cond_9
    const-string p0, ""

    :cond_a
    :goto_1
    return-object p0
.end method


# virtual methods
.method public final formatLocation(Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;)Ljava/lang/String;
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miniaa/launcher/data/location/NominatimGeocoder;->formatFromFields(Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final reverse(DDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/data/location/NominatimGeocoder$NominatimResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 34
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/miniaa/launcher/data/location/NominatimGeocoder$reverse$2;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miniaa/launcher/data/location/NominatimGeocoder$reverse$2;-><init>(DDLkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v6, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
