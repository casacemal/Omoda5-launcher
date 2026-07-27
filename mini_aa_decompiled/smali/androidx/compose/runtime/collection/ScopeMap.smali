.class public final Landroidx/compose/runtime/collection/ScopeMap;
.super Ljava/lang/Object;
.source "ScopeMap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Scope:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeMap.kt\nandroidx/compose/runtime/collection/ScopeMap\n+ 2 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 3 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 6 ScatterSet.kt\nandroidx/collection/MutableScatterSet\n*L\n1#1,194:1\n77#1,5:239\n85#1,4:270\n876#2,18:195\n1049#2:274\n1051#2:288\n1052#2,3:316\n1055#2:325\n1049#2:326\n1051#2,4:340\n1055#2:350\n228#3,4:213\n198#3,7:217\n209#3,3:225\n212#3,9:229\n232#3:238\n228#3,4:244\n198#3,7:248\n209#3,3:256\n212#3,9:260\n232#3:269\n198#3,7:291\n209#3,3:299\n212#3,2:303\n215#3,6:309\n1956#4:224\n1820#4:228\n1956#4:255\n1820#4:259\n1956#4:281\n1820#4:285\n1956#4:298\n1820#4:302\n1956#4:333\n1820#4:337\n1956#4:361\n1820#4:365\n365#5,6:275\n375#5,3:282\n378#5,2:286\n381#5,6:319\n365#5,6:327\n375#5,3:334\n378#5,2:338\n381#5,6:344\n393#5,4:351\n365#5,6:355\n375#5,3:362\n378#5,2:366\n398#5,2:368\n381#5,6:370\n400#5:376\n784#6,2:289\n787#6,4:305\n791#6:315\n*S KotlinDebug\n*F\n+ 1 ScopeMap.kt\nandroidx/compose/runtime/collection/ScopeMap\n*L\n91#1:239,5\n91#1:270,4\n37#1:195,18\n138#1:274\n138#1:288\n138#1:316,3\n138#1:325\n159#1:326\n159#1:340,4\n159#1:350\n81#1:213,4\n81#1:217,7\n81#1:225,3\n81#1:229,9\n81#1:238\n91#1:244,4\n91#1:248,7\n91#1:256,3\n91#1:260,9\n91#1:269\n143#1:291,7\n143#1:299,3\n143#1:303,2\n143#1:309,6\n81#1:224\n81#1:228\n91#1:255\n91#1:259\n138#1:281\n138#1:285\n143#1:298\n143#1:302\n159#1:333\n159#1:337\n180#1:361\n180#1:365\n138#1:275,6\n138#1:282,3\n138#1:286,2\n138#1:319,6\n159#1:327,6\n159#1:334,3\n159#1:338,2\n159#1:344,6\n180#1:351,4\n180#1:355,6\n180#1:362,3\n180#1:366,2\n180#1:368,2\n180#1:370,6\n180#1:376\n143#1:289,2\n143#1:305,4\n143#1:315\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\"\n\u0002\u0008\u000f\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001b\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u0011J9\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00028\u00002!\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00130\u0015H\u0086\u0008\u00a2\u0006\u0002\u0010\u0018J\u0018\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u001b0\u001aJ\u0006\u0010\u001c\u001a\u00020\u000eJ\u0016\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010\u001fJ9\u0010 \u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u00002!\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u000e0\u0015H\u0086\u0008\u00a2\u0006\u0002\u0010!J\u001b\u0010\"\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u0001\u00a2\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00028\u0001\u00a2\u0006\u0002\u0010%J.\u0010&\u001a\u00020\u000e2#\u0008\u0004\u0010\'\u001a\u001d\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00130\u0015H\u0086\u0008J\u001b\u0010(\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u00002\u0006\u0010)\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u0011R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006*"
    }
    d2 = {
        "Landroidx/compose/runtime/collection/ScopeMap;",
        "Key",
        "",
        "Scope",
        "()V",
        "map",
        "Landroidx/collection/MutableScatterMap;",
        "getMap",
        "()Landroidx/collection/MutableScatterMap;",
        "size",
        "",
        "getSize",
        "()I",
        "add",
        "",
        "key",
        "scope",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "anyScopeOf",
        "",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z",
        "asMap",
        "",
        "",
        "clear",
        "contains",
        "element",
        "(Ljava/lang/Object;)Z",
        "forEachScopeOf",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "remove",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "removeScope",
        "(Ljava/lang/Object;)V",
        "removeScopeIf",
        "predicate",
        "set",
        "value",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final map:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TScope;)V"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    .line 195
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v5, v4

    goto :goto_1

    .line 201
    :cond_1
    iget-object v5, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v5, v5, v0

    :goto_1
    if-nez v5, :cond_2

    goto :goto_3

    .line 40
    :cond_2
    instance-of v6, v5, Landroidx/collection/MutableScatterSet;

    if-eqz v6, :cond_3

    .line 42
    const-string/jumbo v1, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.add$lambda$0>"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v5

    check-cast v1, Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eq v5, p2, :cond_4

    .line 48
    new-instance v6, Landroidx/collection/MutableScatterSet;

    invoke-direct {v6, v2, v1, v4}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    const-string/jumbo v1, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.add$lambda$0"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v6, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move-object p2, v6

    goto :goto_3

    :cond_4
    :goto_2
    move-object p2, v5

    :goto_3
    if-eqz v3, :cond_5

    not-int v0, v0

    .line 207
    iget-object v1, p0, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 208
    iget-object p0, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aput-object p2, p0, v0

    goto :goto_4

    .line 210
    :cond_5
    iget-object p0, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aput-object p2, p0, v0

    :goto_4
    return-void
.end method

.method public final anyScopeOf(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;",
            "Lkotlin/jvm/functions/Function1<",
            "-TScope;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    .line 241
    instance-of v0, p0, Landroidx/collection/MutableScatterSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 243
    check-cast p0, Landroidx/collection/MutableScatterSet;

    check-cast p0, Landroidx/collection/ScatterSet;

    .line 245
    iget-object v0, p0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 249
    iget-object p0, p0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 250
    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_4

    move v3, p1

    .line 253
    :goto_0
    aget-wide v4, p0, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    sub-int v6, v3, v2

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, p1

    :goto_1
    if-ge v8, v6, :cond_1

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    .line 247
    aget-object v9, v0, v9

    .line 92
    invoke-interface {p2, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    return v1

    :cond_0
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-ne v6, v7, :cond_4

    :cond_2
    if-eq v3, v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return p1
.end method

.method public final asMap()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TKey;",
            "Ljava/util/Set<",
            "TScope;>;>;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 180
    iget-object p0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    check-cast p0, Landroidx/collection/ScatterMap;

    .line 351
    iget-object v1, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 352
    iget-object v2, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 355
    iget-object p0, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 356
    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_4

    const/4 v4, 0x0

    move v5, v4

    .line 359
    :goto_0
    aget-wide v6, p0, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_2

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_1

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    .line 368
    aget-object v12, v1, v11

    aget-object v11, v2, v11

    .line 182
    move-object v13, v0

    check-cast v13, Ljava/util/Map;

    const-string/jumbo v14, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.ScopeMap.asMap$lambda$4"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    instance-of v14, v11, Landroidx/collection/MutableScatterSet;

    if-eqz v14, :cond_0

    .line 184
    const-string/jumbo v14, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.asMap$lambda$4>"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroidx/collection/MutableScatterSet;

    .line 186
    invoke-virtual {v11}, Landroidx/collection/MutableScatterSet;->asSet()Ljava/util/Set;

    move-result-object v11

    goto :goto_2

    .line 188
    :cond_0
    const-string/jumbo v14, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.asMap$lambda$4"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    .line 182
    :goto_2
    invoke-interface {v13, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    if-ne v8, v9, :cond_4

    :cond_3
    if-eq v5, v3, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 191
    :cond_4
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final clear()V
    .locals 0

    .line 101
    iget-object p0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)Z"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final forEachScopeOf(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;",
            "Lkotlin/jvm/functions/Function1<",
            "-TScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 79
    instance-of p1, p0, Landroidx/collection/MutableScatterSet;

    if-eqz p1, :cond_3

    .line 81
    check-cast p0, Landroidx/collection/MutableScatterSet;

    check-cast p0, Landroidx/collection/ScatterSet;

    .line 214
    iget-object p1, p0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 218
    iget-object p0, p0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 219
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_4

    const/4 v1, 0x0

    move v2, v1

    .line 222
    :goto_0
    aget-wide v3, p0, v2

    not-long v5, v3

    const/4 v7, 0x7

    shl-long/2addr v5, v7

    and-long/2addr v5, v3

    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v5, v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    sub-int v5, v2, v0

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x8

    rsub-int/lit8 v5, v5, 0x8

    move v7, v1

    :goto_1
    if-ge v7, v5, :cond_1

    const-wide/16 v8, 0xff

    and-long/2addr v8, v3

    const-wide/16 v10, 0x80

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    shl-int/lit8 v8, v2, 0x3

    add-int/2addr v8, v7

    .line 216
    aget-object v8, p1, v8

    invoke-interface {p2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    shr-long/2addr v3, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    if-ne v5, v6, :cond_4

    :cond_2
    if-eq v2, v0, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_3
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final getMap()Landroidx/collection/MutableScatterMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    .line 31
    iget-object p0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap;->getSize()I

    move-result p0

    return p0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TScope;)Z"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 115
    :cond_0
    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_2

    .line 117
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 119
    invoke-virtual {v0, p2}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 120
    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object p0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return p2

    .line 125
    :cond_2
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 126
    iget-object p0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final removeScope(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TScope;)V"
        }
    .end annotation

    .line 159
    iget-object p0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    .line 326
    move-object v0, p0

    check-cast v0, Landroidx/collection/ScatterMap;

    .line 327
    iget-object v0, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 328
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_5

    const/4 v2, 0x0

    move v3, v2

    .line 331
    :goto_0
    aget-wide v4, v0, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_3

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    .line 340
    iget-object v10, p0, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aget-object v10, v10, v9

    iget-object v10, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v10, v10, v9

    .line 161
    instance-of v11, v10, Landroidx/collection/MutableScatterSet;

    if-eqz v11, :cond_0

    .line 163
    const-string/jumbo v11, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScope$lambda$3>"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroidx/collection/MutableScatterSet;

    .line 164
    invoke-virtual {v10, p1}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v10}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v10

    goto :goto_2

    :cond_0
    if-ne v10, p1, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    move v10, v2

    :goto_2
    if-eqz v10, :cond_2

    .line 341
    invoke-virtual {p0, v9}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_2
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    if-ne v6, v7, :cond_5

    :cond_4
    if-eq v3, v1, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final removeScopeIf(Lkotlin/jvm/functions/Function1;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TScope;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/collection/ScopeMap;->getMap()Landroidx/collection/MutableScatterMap;

    move-result-object v1

    .line 274
    move-object v2, v1

    check-cast v2, Landroidx/collection/ScatterMap;

    .line 275
    iget-object v2, v2, Landroidx/collection/ScatterMap;->metadata:[J

    .line 276
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_c

    const/4 v5, 0x0

    .line 279
    :goto_0
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_b

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_a

    const-wide/16 v14, 0xff

    and-long v16, v6, v14

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_9

    shl-int/lit8 v16, v5, 0x3

    add-int v4, v16, v13

    .line 288
    iget-object v14, v1, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aget-object v14, v14, v4

    iget-object v14, v1, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v14, v14, v4

    .line 140
    instance-of v15, v14, Landroidx/collection/MutableScatterSet;

    if-eqz v15, :cond_7

    .line 142
    const-string/jumbo v15, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroidx/collection/MutableScatterSet;

    .line 289
    iget-object v15, v14, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 290
    move-object v9, v14

    check-cast v9, Landroidx/collection/ScatterSet;

    .line 292
    iget-object v9, v9, Landroidx/collection/ScatterSet;->metadata:[J

    .line 293
    array-length v11, v9

    add-int/lit8 v11, v11, -0x2

    move-object/from16 v22, v2

    move/from16 v23, v3

    if-ltz v11, :cond_5

    const/4 v12, 0x0

    .line 296
    :goto_2
    aget-wide v2, v9, v12

    move/from16 v24, v8

    move-object/from16 v25, v9

    not-long v8, v2

    shl-long/2addr v8, v10

    and-long/2addr v8, v2

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v8, v8, v20

    cmp-long v8, v8, v20

    if-eqz v8, :cond_4

    sub-int v8, v12, v11

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_3

    const-wide/16 v16, 0xff

    and-long v26, v2, v16

    cmp-long v26, v26, v18

    if-gez v26, :cond_0

    const/16 v26, 0x1

    goto :goto_4

    :cond_0
    const/16 v26, 0x0

    :goto_4
    if-eqz v26, :cond_1

    shl-int/lit8 v26, v12, 0x3

    add-int v10, v26, v9

    move/from16 v26, v5

    .line 305
    aget-object v5, v15, v10

    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 306
    invoke-virtual {v14, v10}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    goto :goto_5

    :cond_1
    move/from16 v26, v5

    :cond_2
    :goto_5
    const/16 v5, 0x8

    shr-long/2addr v2, v5

    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v26

    const/4 v10, 0x7

    goto :goto_3

    :cond_3
    move/from16 v26, v5

    const/16 v5, 0x8

    const-wide/16 v16, 0xff

    if-ne v8, v5, :cond_6

    goto :goto_6

    :cond_4
    move/from16 v26, v5

    const-wide/16 v16, 0xff

    :goto_6
    if-eq v12, v11, :cond_6

    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v24

    move-object/from16 v9, v25

    move/from16 v5, v26

    const/4 v10, 0x7

    goto :goto_2

    :cond_5
    move/from16 v26, v5

    move/from16 v24, v8

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 144
    :cond_6
    invoke-virtual {v14}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v2

    goto :goto_7

    :cond_7
    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v26, v5

    move/from16 v24, v8

    move-wide/from16 v20, v11

    .line 148
    const-string/jumbo v2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_7
    if-eqz v2, :cond_8

    .line 316
    invoke-virtual {v1, v4}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_8
    const/16 v2, 0x8

    goto :goto_8

    :cond_9
    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v26, v5

    move/from16 v24, v8

    move-wide/from16 v20, v11

    move v2, v9

    :goto_8
    shr-long/2addr v6, v2

    add-int/lit8 v13, v13, 0x1

    move v9, v2

    move-wide/from16 v11, v20

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v8, v24

    move/from16 v5, v26

    const/4 v10, 0x7

    goto/16 :goto_1

    :cond_a
    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v26, v5

    move v2, v9

    move v9, v8

    if-ne v9, v2, :cond_c

    move/from16 v3, v23

    move/from16 v4, v26

    goto :goto_9

    :cond_b
    move-object/from16 v22, v2

    move v4, v5

    :goto_9
    if-eq v4, v3, :cond_c

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v2, v22

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TScope;)V"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
