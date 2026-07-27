.class public final Lcoil/request/Parameters;
.super Ljava/lang/Object;
.source "Parameters.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/request/Parameters$Builder;,
        Lcoil/request/Parameters$Companion;,
        Lcoil/request/Parameters$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Lcoil/request/Parameters$Entry;",
        ">;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParameters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Parameters.kt\ncoil/request/Parameters\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Collections.kt\ncoil/util/-Collections\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,138:1\n462#2:139\n412#2:140\n1246#3,4:141\n72#4,8:145\n126#5:153\n153#5,3:154\n*S KotlinDebug\n*F\n+ 1 Parameters.kt\ncoil/request/Parameters\n*L\n44#1:139\n44#1:140\n44#1:141,4\n53#1:145,8\n59#1:153\n59#1:154,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010(\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \"2\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001:\u0003 !\"B\u001d\u0008\u0002\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\tJ\u001f\u0010\r\u001a\u0004\u0018\u0001H\u000e\"\u0008\u0008\u0000\u0010\u000e*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0010\u001a\u00020\u0003J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0010\u001a\u00020\u0003J\u0006\u0010\u0014\u001a\u00020\u0015J\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0006J\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0006J\u001b\u0010\u0018\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0019H\u0096\u0002J\u0013\u0010\u001a\u001a\u00020\u00152\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u001c\u001a\u00020\u000bH\u0016J\u0008\u0010\u001d\u001a\u00020\u0003H\u0016J\u0006\u0010\u001e\u001a\u00020\u001fR\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b8G\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000c\u00a8\u0006#"
    }
    d2 = {
        "Lcoil/request/Parameters;",
        "",
        "Lkotlin/Pair;",
        "",
        "Lcoil/request/Parameters$Entry;",
        "entries",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "()V",
        "size",
        "",
        "()I",
        "value",
        "T",
        "",
        "key",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "memoryCacheKey",
        "entry",
        "isEmpty",
        "",
        "values",
        "memoryCacheKeys",
        "iterator",
        "",
        "equals",
        "other",
        "hashCode",
        "toString",
        "newBuilder",
        "Lcoil/request/Parameters$Builder;",
        "Entry",
        "Builder",
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
.field public static final Companion:Lcoil/request/Parameters$Companion;

.field public static final EMPTY:Lcoil/request/Parameters;


# instance fields
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcoil/request/Parameters$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/request/Parameters$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/request/Parameters$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/request/Parameters;->Companion:Lcoil/request/Parameters$Companion;

    .line 135
    new-instance v0, Lcoil/request/Parameters;

    invoke-direct {v0}, Lcoil/request/Parameters;-><init>()V

    sput-object v0, Lcoil/request/Parameters;->EMPTY:Lcoil/request/Parameters;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcoil/request/Parameters;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcoil/request/Parameters$Entry;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcoil/request/Parameters;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$getEntries$p(Lcoil/request/Parameters;)Ljava/util/Map;
    .locals 0

    .line 17
    iget-object p0, p0, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final entry(Ljava/lang/String;)Lcoil/request/Parameters$Entry;
    .locals 0

    .line 34
    iget-object p0, p0, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil/request/Parameters$Entry;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Lcoil/request/Parameters;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    check-cast p1, Lcoil/request/Parameters;

    iget-object p1, p1, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 67
    iget-object p0, p0, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 37
    iget-object p0, p0, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcoil/request/Parameters$Entry;",
            ">;>;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 154
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoil/request/Parameters$Entry;

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 155
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final memoryCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil/request/Parameters$Entry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcoil/request/Parameters$Entry;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final memoryCacheKeys()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcoil/request/Parameters;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_1

    .line 53
    :cond_0
    iget-object p0, p0, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    .line 145
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 146
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcoil/request/Parameters$Entry;

    invoke-virtual {v2}, Lcoil/request/Parameters$Entry;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 149
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public final newBuilder()Lcoil/request/Parameters$Builder;
    .locals 1

    .line 71
    new-instance v0, Lcoil/request/Parameters$Builder;

    invoke-direct {v0, p0}, Lcoil/request/Parameters$Builder;-><init>(Lcoil/request/Parameters;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    .line 24
    iget-object p0, p0, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parameters(entries="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final value(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 28
    iget-object p0, p0, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil/request/Parameters$Entry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcoil/request/Parameters$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final values()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcoil/request/Parameters;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_1

    .line 44
    :cond_0
    iget-object p0, p0, Lcoil/request/Parameters;->entries:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    .line 140
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 141
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 142
    check-cast v1, Ljava/util/Map$Entry;

    .line 140
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoil/request/Parameters$Entry;

    invoke-virtual {v1}, Lcoil/request/Parameters$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 142
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    return-object p0
.end method
