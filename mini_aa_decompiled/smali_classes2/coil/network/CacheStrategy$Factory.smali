.class public final Lcoil/network/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/network/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0017\u001a\u00020\u0010H\u0002J\u0008\u0010\u0018\u001a\u00020\u0010H\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcoil/network/CacheStrategy$Factory;",
        "",
        "request",
        "Lokhttp3/Request;",
        "cacheResponse",
        "Lcoil/network/CacheResponse;",
        "<init>",
        "(Lokhttp3/Request;Lcoil/network/CacheResponse;)V",
        "servedDate",
        "Ljava/util/Date;",
        "servedDateString",
        "",
        "lastModified",
        "lastModifiedString",
        "expires",
        "sentRequestMillis",
        "",
        "receivedResponseMillis",
        "etag",
        "ageSeconds",
        "",
        "compute",
        "Lcoil/network/CacheStrategy;",
        "computeFreshnessLifetime",
        "cacheResponseAge",
        "hasConditions",
        "",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private ageSeconds:I

.field private final cacheResponse:Lcoil/network/CacheResponse;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field private receivedResponseMillis:J

.field private final request:Lokhttp3/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/Request;Lcoil/network/CacheResponse;)V
    .locals 6

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcoil/network/CacheStrategy$Factory;->request:Lokhttp3/Request;

    .line 21
    iput-object p2, p0, Lcoil/network/CacheStrategy$Factory;->cacheResponse:Lcoil/network/CacheResponse;

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcoil/network/CacheStrategy$Factory;->ageSeconds:I

    if-eqz p2, :cond_5

    .line 52
    invoke-virtual {p2}, Lcoil/network/CacheResponse;->getSentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcoil/network/CacheStrategy$Factory;->sentRequestMillis:J

    .line 53
    invoke-virtual {p2}, Lcoil/network/CacheResponse;->getReceivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcoil/network/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 54
    invoke-virtual {p2}, Lcoil/network/CacheResponse;->getResponseHeaders()Lokhttp3/Headers;

    move-result-object p2

    .line 55
    invoke-virtual {p2}, Lokhttp3/Headers;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 56
    invoke-virtual {p2, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v3, "Date"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    invoke-virtual {p2, v3}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcoil/network/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 60
    invoke-virtual {p2, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcoil/network/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto :goto_1

    .line 62
    :cond_0
    const-string v3, "Expires"

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    invoke-virtual {p2, v3}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcoil/network/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    .line 65
    :cond_1
    const-string v3, "Last-Modified"

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    invoke-virtual {p2, v3}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcoil/network/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 67
    invoke-virtual {p2, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcoil/network/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 69
    :cond_2
    const-string v3, "ETag"

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    invoke-virtual {p2, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcoil/network/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    .line 72
    :cond_3
    const-string v3, "Age"

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    invoke-virtual {p2, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcoil/util/-Utils;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcoil/network/CacheStrategy$Factory;->ageSeconds:I

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final cacheResponseAge()J
    .locals 9

    .line 187
    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 189
    iget-wide v3, p0, Lcoil/network/CacheStrategy$Factory;->receivedResponseMillis:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 194
    :cond_0
    iget v0, p0, Lcoil/network/CacheStrategy$Factory;->ageSeconds:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 195
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcoil/network/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 200
    :cond_1
    iget-wide v3, p0, Lcoil/network/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v5, p0, Lcoil/network/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long/2addr v3, v5

    .line 201
    sget-object v0, Lcoil/util/Time;->INSTANCE:Lcoil/util/Time;

    invoke-virtual {v0}, Lcoil/util/Time;->currentMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcoil/network/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long/2addr v5, v7

    add-long/2addr v1, v3

    add-long/2addr v1, v5

    return-wide v1
.end method

.method private final computeFreshnessLifetime()J
    .locals 7

    .line 158
    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->cacheResponse:Lcoil/network/CacheResponse;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcoil/network/CacheResponse;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 160
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->expires:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 165
    iget-object v3, p0, Lcoil/network/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcoil/network/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 166
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long p0, v5, v1

    if-lez p0, :cond_2

    move-wide v1, v5

    :cond_2
    return-wide v1

    .line 170
    :cond_3
    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 174
    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_4
    iget-wide v3, p0, Lcoil/network/CacheStrategy$Factory;->sentRequestMillis:J

    .line 175
    :goto_1
    iget-object p0, p0, Lcoil/network/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-lez p0, :cond_5

    const/16 p0, 0xa

    int-to-long v0, p0

    .line 176
    div-long v1, v3, v0

    :cond_5
    return-wide v1
.end method

.method private final hasConditions(Lokhttp3/Request;)Z
    .locals 0

    .line 211
    const-string p0, "If-Modified-Since"

    invoke-virtual {p1, p0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 212
    const-string p0, "If-None-Match"

    invoke-virtual {p1, p0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final compute()Lcoil/network/CacheStrategy;
    .locals 13

    .line 83
    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->cacheResponse:Lcoil/network/CacheResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcoil/network/CacheStrategy;

    iget-object p0, p0, Lcoil/network/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-direct {v0, p0, v1, v1}, Lcoil/network/CacheStrategy;-><init>(Lokhttp3/Request;Lcoil/network/CacheResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->cacheResponse:Lcoil/network/CacheResponse;

    invoke-virtual {v0}, Lcoil/network/CacheResponse;->isTls()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lcoil/network/CacheStrategy;

    iget-object p0, p0, Lcoil/network/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-direct {v0, p0, v1, v1}, Lcoil/network/CacheStrategy;-><init>(Lokhttp3/Request;Lcoil/network/CacheResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->cacheResponse:Lcoil/network/CacheResponse;

    invoke-virtual {v0}, Lcoil/network/CacheResponse;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    .line 96
    sget-object v2, Lcoil/network/CacheStrategy;->Companion:Lcoil/network/CacheStrategy$Companion;

    iget-object v3, p0, Lcoil/network/CacheStrategy$Factory;->request:Lokhttp3/Request;

    iget-object v4, p0, Lcoil/network/CacheStrategy$Factory;->cacheResponse:Lcoil/network/CacheResponse;

    invoke-virtual {v2, v3, v4}, Lcoil/network/CacheStrategy$Companion;->isCacheable(Lokhttp3/Request;Lcoil/network/CacheResponse;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    new-instance v0, Lcoil/network/CacheStrategy;

    iget-object p0, p0, Lcoil/network/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-direct {v0, p0, v1, v1}, Lcoil/network/CacheStrategy;-><init>(Lokhttp3/Request;Lcoil/network/CacheResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 100
    :cond_2
    iget-object v2, p0, Lcoil/network/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lokhttp3/CacheControl;->noCache()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcoil/network/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-direct {p0, v3}, Lcoil/network/CacheStrategy$Factory;->hasConditions(Lokhttp3/Request;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    .line 105
    :cond_3
    invoke-direct {p0}, Lcoil/network/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v3

    .line 106
    invoke-direct {p0}, Lcoil/network/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v5

    .line 108
    invoke-virtual {v2}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 109
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 113
    :cond_4
    invoke-virtual {v2}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v7

    const-wide/16 v9, 0x0

    if-eq v7, v8, :cond_5

    .line 114
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_0

    :cond_5
    move-wide v11, v9

    .line 118
    :goto_0
    invoke-virtual {v0}, Lokhttp3/CacheControl;->mustRevalidate()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v2}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v7

    if-eq v7, v8, :cond_6

    .line 119
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v2

    int-to-long v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 122
    :cond_6
    invoke-virtual {v0}, Lokhttp3/CacheControl;->noCache()Z

    move-result v0

    if-nez v0, :cond_7

    add-long/2addr v3, v11

    add-long/2addr v5, v9

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    .line 123
    new-instance v0, Lcoil/network/CacheStrategy;

    iget-object p0, p0, Lcoil/network/CacheStrategy$Factory;->cacheResponse:Lcoil/network/CacheResponse;

    invoke-direct {v0, v1, p0, v1}, Lcoil/network/CacheStrategy;-><init>(Lokhttp3/Request;Lcoil/network/CacheResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 131
    :cond_7
    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->etag:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "If-None-Match"

    goto :goto_1

    .line 135
    :cond_8
    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    const-string v2, "If-Modified-Since"

    if-eqz v0, :cond_9

    .line 137
    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 139
    :cond_9
    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_a

    .line 141
    iget-object v0, p0, Lcoil/network/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    :goto_1
    iget-object v3, p0, Lcoil/network/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v3}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    .line 148
    invoke-virtual {v3, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 150
    new-instance v2, Lcoil/network/CacheStrategy;

    iget-object p0, p0, Lcoil/network/CacheStrategy$Factory;->cacheResponse:Lcoil/network/CacheResponse;

    invoke-direct {v2, v0, p0, v1}, Lcoil/network/CacheStrategy;-><init>(Lokhttp3/Request;Lcoil/network/CacheResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 144
    :cond_a
    new-instance v0, Lcoil/network/CacheStrategy;

    iget-object p0, p0, Lcoil/network/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-direct {v0, p0, v1, v1}, Lcoil/network/CacheStrategy;-><init>(Lokhttp3/Request;Lcoil/network/CacheResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 102
    :cond_b
    :goto_2
    new-instance v0, Lcoil/network/CacheStrategy;

    iget-object p0, p0, Lcoil/network/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-direct {v0, p0, v1, v1}, Lcoil/network/CacheStrategy;-><init>(Lokhttp3/Request;Lcoil/network/CacheResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
