.class public final Lcoil/network/CacheStrategy$Companion;
.super Ljava/lang/Object;
.source "CacheStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/network/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\nJ\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cJ\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcoil/network/CacheStrategy$Companion;",
        "",
        "<init>",
        "()V",
        "isCacheable",
        "",
        "request",
        "Lokhttp3/Request;",
        "response",
        "Lokhttp3/Response;",
        "Lcoil/network/CacheResponse;",
        "combineHeaders",
        "Lokhttp3/Headers;",
        "cachedHeaders",
        "networkHeaders",
        "isEndToEnd",
        "name",
        "",
        "isContentSpecificHeader",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcoil/network/CacheStrategy$Companion;-><init>()V

    return-void
.end method

.method private final isContentSpecificHeader(Ljava/lang/String;)Z
    .locals 1

    .line 273
    const-string p0, "Content-Length"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    .line 274
    const-string p0, "Content-Encoding"

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    .line 275
    const-string p0, "Content-Type"

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final isEndToEnd(Ljava/lang/String;)Z
    .locals 1

    .line 261
    const-string p0, "Connection"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 262
    const-string p0, "Keep-Alive"

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 263
    const-string p0, "Proxy-Authenticate"

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 264
    const-string p0, "Proxy-Authorization"

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 265
    const-string p0, "TE"

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 266
    const-string p0, "Trailers"

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 267
    const-string p0, "Transfer-Encoding"

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 268
    const-string p0, "Upgrade"

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final combineHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 9

    .line 235
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 237
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 238
    invoke-virtual {p1, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-virtual {p1, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 240
    const-string v6, "Warning"

    const/4 v7, 0x1

    invoke-static {v6, v4, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-static {v5, v8, v2, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    invoke-direct {p0, v4}, Lcoil/network/CacheStrategy$Companion;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Lcoil/network/CacheStrategy$Companion;->isEndToEnd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p2, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 245
    :cond_1
    invoke-virtual {v0, v4, v5}, Lokhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_3
    invoke-virtual {p2}, Lokhttp3/Headers;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_5

    .line 250
    invoke-virtual {p2, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-direct {p0, v1}, Lcoil/network/CacheStrategy$Companion;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v1}, Lcoil/network/CacheStrategy$Companion;->isEndToEnd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 252
    invoke-virtual {p2, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lokhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 256
    :cond_5
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method public final isCacheable(Lokhttp3/Request;Lcoil/network/CacheResponse;)Z
    .locals 0

    .line 228
    invoke-virtual {p1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lcoil/network/CacheResponse;->getCacheControl()Lokhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_0

    .line 230
    invoke-virtual {p2}, Lcoil/network/CacheResponse;->getResponseHeaders()Lokhttp3/Headers;

    move-result-object p0

    const-string p1, "Vary"

    invoke-virtual {p0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "*"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCacheable(Lokhttp3/Request;Lokhttp3/Response;)Z
    .locals 0

    .line 220
    invoke-virtual {p1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_0

    .line 222
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    const-string p1, "Vary"

    invoke-virtual {p0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "*"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
