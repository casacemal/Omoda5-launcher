.class public final Lcoil/memory/RealWeakMemoryCache;
.super Ljava/lang/Object;
.source "WeakMemoryCache.kt"

# interfaces
.implements Lcoil/memory/WeakMemoryCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/RealWeakMemoryCache$Companion;,
        Lcoil/memory/RealWeakMemoryCache$InternalValue;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWeakMemoryCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WeakMemoryCache.kt\ncoil/memory/RealWeakMemoryCache\n+ 2 Collections.kt\ncoil/util/-Collections\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 Utils.kt\ncoil/util/-Utils\n*L\n1#1,158:1\n44#2,2:159\n47#2:163\n55#2,9:172\n1#3:161\n1#3:162\n381#4,7:164\n162#5:171\n*S KotlinDebug\n*F\n+ 1 WeakMemoryCache.kt\ncoil/memory/RealWeakMemoryCache\n*L\n63#1:159,2\n63#1:163\n137#1:172,9\n63#1:162\n73#1:164,7\n77#1:171\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0000\u0018\u0000 (2\u00020\u0001:\u0002\'(B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0006H\u0016J4\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001b2\u0006\u0010\u001e\u001a\u00020\rH\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u0015\u001a\u00020\u0006H\u0016J\u0008\u0010!\u001a\u00020\u0017H\u0016J\u0010\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\rH\u0016J\u0008\u0010$\u001a\u00020\u0017H\u0002J\r\u0010%\u001a\u00020\u0017H\u0001\u00a2\u0006\u0002\u0008&R.\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00058\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\u0003\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u000e\u001a\r\u0012\t\u0012\u00070\u0006\u00a2\u0006\u0002\u0008\u00100\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006)"
    }
    d2 = {
        "Lcoil/memory/RealWeakMemoryCache;",
        "Lcoil/memory/WeakMemoryCache;",
        "<init>",
        "()V",
        "cache",
        "Ljava/util/LinkedHashMap;",
        "Lcoil/memory/MemoryCache$Key;",
        "Ljava/util/ArrayList;",
        "Lcoil/memory/RealWeakMemoryCache$InternalValue;",
        "getCache$coil_base_release$annotations",
        "getCache$coil_base_release",
        "()Ljava/util/LinkedHashMap;",
        "operationsSinceCleanUp",
        "",
        "keys",
        "",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "getKeys",
        "()Ljava/util/Set;",
        "get",
        "Lcoil/memory/MemoryCache$Value;",
        "key",
        "set",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "extras",
        "",
        "",
        "",
        "size",
        "remove",
        "",
        "clearMemory",
        "trimMemory",
        "level",
        "cleanUpIfNecessary",
        "cleanUp",
        "cleanUp$coil_base_release",
        "InternalValue",
        "Companion",
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


# static fields
.field private static final CLEAN_UP_INTERVAL:I = 0xa

.field public static final Companion:Lcoil/memory/RealWeakMemoryCache$Companion;


# instance fields
.field private final cache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcoil/memory/MemoryCache$Key;",
            "Ljava/util/ArrayList<",
            "Lcoil/memory/RealWeakMemoryCache$InternalValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private operationsSinceCleanUp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/memory/RealWeakMemoryCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/RealWeakMemoryCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/memory/RealWeakMemoryCache;->Companion:Lcoil/memory/RealWeakMemoryCache$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private final cleanUpIfNecessary()V
    .locals 2

    .line 115
    iget v0, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUp$coil_base_release()V

    :cond_0
    return-void
.end method

.method public static synthetic getCache$coil_base_release$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final cleanUp$coil_base_release()V
    .locals 8

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    .line 126
    iget-object p0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 127
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 130
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 132
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoil/memory/RealWeakMemoryCache$InternalValue;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcoil/memory/RealWeakMemoryCache$InternalValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_0

    .line 133
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 137
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 173
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v0

    move v5, v4

    :goto_2
    if-ge v4, v3, :cond_4

    sub-int v6, v4, v5

    .line 175
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcoil/memory/RealWeakMemoryCache$InternalValue;

    .line 137
    invoke-virtual {v7}, Lcoil/memory/RealWeakMemoryCache$InternalValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 176
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 139
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public declared-synchronized clearMemory()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 103
    :try_start_0
    iput v0, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    .line 104
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$Value;
    .locals 6

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    .line 63
    :cond_0
    :try_start_1
    check-cast p1, Ljava/util/List;

    .line 159
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 160
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcoil/memory/RealWeakMemoryCache$InternalValue;

    .line 64
    invoke-virtual {v3}, Lcoil/memory/RealWeakMemoryCache$InternalValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    new-instance v5, Lcoil/memory/MemoryCache$Value;

    invoke-virtual {v3}, Lcoil/memory/RealWeakMemoryCache$InternalValue;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcoil/memory/MemoryCache$Value;-><init>(Landroid/graphics/Bitmap;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_2

    move-object v0, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUpIfNecessary()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final getCache$coil_base_release()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Lcoil/memory/MemoryCache$Key;",
            "Ljava/util/ArrayList<",
            "Lcoil/memory/RealWeakMemoryCache$InternalValue;",
            ">;>;"
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public declared-synchronized getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcoil/memory/MemoryCache$Key;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized remove(Lcoil/memory/MemoryCache$Key;)Z
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/memory/MemoryCache$Key;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/LinkedHashMap;

    check-cast v0, Ljava/util/Map;

    .line 164
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    check-cast v1, Ljava/util/ArrayList;

    .line 76
    move-object p1, p0

    check-cast p1, Lcoil/memory/RealWeakMemoryCache;

    .line 171
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    .line 78
    new-instance v0, Lcoil/memory/RealWeakMemoryCache$InternalValue;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v2, p3, p4}, Lcoil/memory/RealWeakMemoryCache$InternalValue;-><init>(ILjava/lang/ref/WeakReference;Ljava/util/Map;I)V

    .line 79
    move-object p3, v1

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_3

    .line 80
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcoil/memory/RealWeakMemoryCache$InternalValue;

    .line 81
    invoke-virtual {v3}, Lcoil/memory/RealWeakMemoryCache$InternalValue;->getSize()I

    move-result v4

    if-lt p4, v4, :cond_2

    .line 82
    invoke-virtual {v3}, Lcoil/memory/RealWeakMemoryCache$InternalValue;->getIdentityHashCode()I

    move-result p3

    if-ne p3, p1, :cond_1

    invoke-virtual {v3}, Lcoil/memory/RealWeakMemoryCache$InternalValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_1

    .line 83
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_3
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_1
    invoke-direct {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUpIfNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized trimMemory(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUp$coil_base_release()V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 112
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
