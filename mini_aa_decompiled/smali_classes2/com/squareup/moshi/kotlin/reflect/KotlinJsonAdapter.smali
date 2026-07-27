.class public final Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;
.super Lcom/squareup/moshi/JsonAdapter;
.source "KotlinJsonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;,
        Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/moshi/JsonAdapter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002 !BU\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u001c\u0010\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00070\u0006\u0012\u001a\u0010\t\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0015\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u0016H\u0016\u00a2\u0006\u0002\u0010\u0017J\u001f\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u001fH\u0016R\'\u0010\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R%\u0010\t\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\""
    }
    d2 = {
        "Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;",
        "T",
        "Lcom/squareup/moshi/JsonAdapter;",
        "constructor",
        "Lkotlin/reflect/KFunction;",
        "allBindings",
        "",
        "Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;",
        "",
        "nonIgnoredBindings",
        "options",
        "Lcom/squareup/moshi/JsonReader$Options;",
        "(Lkotlin/reflect/KFunction;Ljava/util/List;Ljava/util/List;Lcom/squareup/moshi/JsonReader$Options;)V",
        "getAllBindings",
        "()Ljava/util/List;",
        "getConstructor",
        "()Lkotlin/reflect/KFunction;",
        "getNonIgnoredBindings",
        "getOptions",
        "()Lcom/squareup/moshi/JsonReader$Options;",
        "fromJson",
        "reader",
        "Lcom/squareup/moshi/JsonReader;",
        "(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;",
        "toJson",
        "",
        "writer",
        "Lcom/squareup/moshi/JsonWriter;",
        "value",
        "(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V",
        "toString",
        "",
        "Binding",
        "IndexedParameterMap",
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
.field private final allBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final constructor:Lkotlin/reflect/KFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KFunction<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final nonIgnoredBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final options:Lcom/squareup/moshi/JsonReader$Options;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KFunction;Ljava/util/List;Ljava/util/List;Lcom/squareup/moshi/JsonReader$Options;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KFunction<",
            "+TT;>;",
            "Ljava/util/List<",
            "Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/squareup/moshi/JsonReader$Options;",
            ")V"
        }
    .end annotation

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allBindings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonIgnoredBindings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/squareup/moshi/JsonAdapter;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->constructor:Lkotlin/reflect/KFunction;

    .line 59
    iput-object p2, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->allBindings:Ljava/util/List;

    .line 60
    iput-object p3, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->nonIgnoredBindings:Ljava/util/List;

    .line 61
    iput-object p4, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$Options;

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonReader;",
            ")TT;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->constructor:Lkotlin/reflect/KFunction;

    invoke-interface {v0}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->allBindings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-static {}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterKt;->access$getABSENT_VALUE$p()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->beginObject()V

    .line 70
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 71
    iget-object v4, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$Options;

    invoke-virtual {p1, v4}, Lcom/squareup/moshi/JsonReader;->selectName(Lcom/squareup/moshi/JsonReader$Options;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 73
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->skipName()V

    .line 74
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 77
    :cond_2
    iget-object v5, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->nonIgnoredBindings:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;

    .line 79
    invoke-virtual {v4}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;->getPropertyIndex()I

    move-result v5

    .line 80
    aget-object v6, v2, v5

    invoke-static {}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterKt;->access$getABSENT_VALUE$p()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_4

    .line 86
    invoke-virtual {v4}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;->getAdapter()Lcom/squareup/moshi/JsonAdapter;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v5

    if-nez v6, :cond_1

    .line 88
    invoke-virtual {v4}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;->getProperty()Lkotlin/reflect/KProperty1;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/reflect/KProperty1;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {v4}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;->getProperty()Lkotlin/reflect/KProperty1;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-virtual {v4}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;->getJsonName()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {p0, v0, p1}, Lcom/squareup/moshi/internal/Util;->unexpectedNull(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    const-string p1, "unexpectedNull(\n        \u2026         reader\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 81
    :cond_4
    new-instance p0, Lcom/squareup/moshi/JsonDataException;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Multiple values for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;->getProperty()Lkotlin/reflect/KProperty1;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_5
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->endObject()V

    .line 99
    iget-object v4, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->allBindings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v0, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    move v4, v3

    :goto_2
    move v5, v3

    :goto_3
    if-ge v5, v0, :cond_b

    .line 101
    aget-object v6, v2, v5

    invoke-static {}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterKt;->access$getABSENT_VALUE$p()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_a

    .line 103
    iget-object v6, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->constructor:Lkotlin/reflect/KFunction;

    invoke-interface {v6}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/KParameter;

    invoke-interface {v6}, Lkotlin/reflect/KParameter;->isOptional()Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v3

    goto :goto_4

    .line 104
    :cond_7
    iget-object v6, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->constructor:Lkotlin/reflect/KFunction;

    invoke-interface {v6}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/KParameter;

    invoke-interface {v6}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    aput-object v7, v2, v5

    goto :goto_4

    .line 106
    :cond_8
    iget-object v0, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->constructor:Lkotlin/reflect/KFunction;

    invoke-interface {v0}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KParameter;

    invoke-interface {v0}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object p0, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->allBindings:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;->getJsonName()Ljava/lang/String;

    move-result-object v7

    .line 105
    :cond_9
    invoke-static {v0, v7, p1}, Lcom/squareup/moshi/internal/Util;->missingProperty(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    const-string p1, "missingProperty(\n       \u2026       reader\n          )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    if-eqz v4, :cond_c

    .line 116
    iget-object p1, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->constructor:Lkotlin/reflect/KFunction;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/reflect/KFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    .line 118
    :cond_c
    iget-object p1, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->constructor:Lkotlin/reflect/KFunction;

    new-instance v1, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;

    iget-object v3, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->constructor:Lkotlin/reflect/KFunction;

    invoke-interface {v3}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$IndexedParameterMap;-><init>(Ljava/util/List;[Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Map;

    invoke-interface {p1, v1}, Lkotlin/reflect/KFunction;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 122
    :goto_5
    iget-object v1, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->allBindings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_6
    if-ge v0, v1, :cond_d

    .line 123
    iget-object v3, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->allBindings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;

    .line 124
    aget-object v4, v2, v0

    .line 125
    invoke-virtual {v3, p1, v4}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    return-object p1
.end method

.method public final getAllBindings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->allBindings:Ljava/util/List;

    return-object p0
.end method

.method public final getConstructor()Lkotlin/reflect/KFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KFunction<",
            "TT;>;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->constructor:Lkotlin/reflect/KFunction;

    return-object p0
.end method

.method public final getNonIgnoredBindings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->nonIgnoredBindings:Ljava/util/List;

    return-object p0
.end method

.method public final getOptions()Lcom/squareup/moshi/JsonReader$Options;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$Options;

    return-object p0
.end method

.method public toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 134
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonWriter;->beginObject()Lcom/squareup/moshi/JsonWriter;

    .line 135
    iget-object p0, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->allBindings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;->getJsonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/squareup/moshi/JsonWriter;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    .line 139
    invoke-virtual {v0}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;->getAdapter()Lcom/squareup/moshi/JsonAdapter;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter$Binding;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/squareup/moshi/JsonAdapter;->toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonWriter;->endObject()Lcom/squareup/moshi/JsonWriter;

    return-void

    .line 132
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KotlinJsonAdapter("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapter;->constructor:Lkotlin/reflect/KFunction;

    invoke-interface {p0}, Lkotlin/reflect/KFunction;->getReturnType()Lkotlin/reflect/KType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
