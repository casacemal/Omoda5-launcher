.class public final Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;
.super Lkotlin/collections/AbstractMutableMap;
.source "KotlinJsonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexedParameterMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractMutableMap<",
        "Lkotlin/reflect/KParameter;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinJsonAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinJsonAdapter.kt\ncom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,328:1\n1559#2:329\n1590#2,4:330\n857#2,2:334\n*S KotlinDebug\n*F\n+ 1 KotlinJsonAdapter.kt\ncom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap\n*L\n172#1:329\n172#1:330,4\n175#1:334,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0010\'\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B#\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0011\u001a\u00020\u0002H\u0096\u0002J\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0011\u001a\u00020\u00022\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016R(\u0010\t\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000b0\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;",
        "Lkotlin/collections/AbstractMutableMap;",
        "Lkotlin/reflect/KParameter;",
        "",
        "parameterKeys",
        "",
        "parameterValues",
        "",
        "(Ljava/util/List;[Ljava/lang/Object;)V",
        "entries",
        "",
        "",
        "getEntries",
        "()Ljava/util/Set;",
        "[Ljava/lang/Object;",
        "containsKey",
        "",
        "key",
        "get",
        "put",
        "value",
        "moshi-kotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final parameterKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/KParameter;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KParameter;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "parameterKeys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterValues"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableMap;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;->parameterKeys:Ljava/util/List;

    .line 165
    iput-object p2, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;->parameterValues:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 163
    instance-of v0, p1, Lkotlin/reflect/KParameter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lkotlin/reflect/KParameter;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;->containsKey(Lkotlin/reflect/KParameter;)Z

    move-result p0

    return p0
.end method

.method public containsKey(Lkotlin/reflect/KParameter;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object p0, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;->parameterValues:[Ljava/lang/Object;

    invoke-interface {p1}, Lkotlin/reflect/KParameter;->getIndex()I

    move-result p1

    aget-object p0, p0, p1

    invoke-static {}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterKt;->access$getABSENT_VALUE$p()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final bridge get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 163
    instance-of v0, p1, Lkotlin/reflect/KParameter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, Lkotlin/reflect/KParameter;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;->get(Lkotlin/reflect/KParameter;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lkotlin/reflect/KParameter;)Ljava/lang/Object;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object p0, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;->parameterValues:[Ljava/lang/Object;

    invoke-interface {p1}, Lkotlin/reflect/KParameter;->getIndex()I

    move-result p1

    aget-object p0, p0, p1

    .line 184
    invoke-static {}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterKt;->access$getABSENT_VALUE$p()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEntries()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lkotlin/reflect/KParameter;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;->parameterKeys:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 331
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    .line 332
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lkotlin/reflect/KParameter;

    .line 173
    new-instance v5, Ljava/util/AbstractMap$SimpleEntry;

    iget-object v6, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;->parameterValues:[Ljava/lang/Object;

    aget-object v2, v6, v2

    invoke-direct {v5, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    .line 333
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 175
    check-cast v1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p0, Ljava/util/Set;

    check-cast p0, Ljava/util/Collection;

    .line 334
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/AbstractMap$SimpleEntry;

    .line 176
    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterKt;->access$getABSENT_VALUE$p()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 334
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    :cond_3
    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 163
    instance-of v0, p1, Lkotlin/reflect/KParameter;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    check-cast p1, Lkotlin/reflect/KParameter;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;->getOrDefault(Lkotlin/reflect/KParameter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge getOrDefault(Lkotlin/reflect/KParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    invoke-super {p0, p1, p2}, Lkotlin/collections/AbstractMutableMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p1, Lkotlin/reflect/KParameter;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;->put(Lkotlin/reflect/KParameter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Lkotlin/reflect/KParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 163
    instance-of v0, p1, Lkotlin/reflect/KParameter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, Lkotlin/reflect/KParameter;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;->remove(Lkotlin/reflect/KParameter;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge remove(Lkotlin/reflect/KParameter;)Ljava/lang/Object;
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lkotlin/collections/AbstractMutableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 163
    instance-of v0, p1, Lkotlin/reflect/KParameter;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lkotlin/reflect/KParameter;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;->remove(Lkotlin/reflect/KParameter;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge remove(Lkotlin/reflect/KParameter;Ljava/lang/Object;)Z
    .locals 0

    .line 163
    invoke-super {p0, p1, p2}, Lkotlin/collections/AbstractMutableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
