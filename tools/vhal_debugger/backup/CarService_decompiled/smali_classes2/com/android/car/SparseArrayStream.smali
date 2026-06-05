.class public Lcom/android/car/SparseArrayStream;
.super Ljava/lang/Object;
.source "SparseArrayStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static keyStream(Landroid/util/SparseArray;)Ljava/util/stream/IntStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TE;>;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .line 28
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/car/-$$Lambda$q72-uw-mQt7s7qER6SYQZJ9GG9o;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$q72-uw-mQt7s7qER6SYQZJ9GG9o;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$pairStream$0(Landroid/util/SparseArray;I)Landroid/util/Pair;
    .locals 3
    .param p0, "array"    # Landroid/util/SparseArray;
    .param p1, "i"    # I

    .line 37
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static pairStream(Landroid/util/SparseArray;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TE;>;)",
            "Ljava/util/stream/Stream<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "TE;>;>;"
        }
    .end annotation

    .line 36
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$SparseArrayStream$lRGBHhGP4jz5dfHErtvBMS158NU;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$SparseArrayStream$lRGBHhGP4jz5dfHErtvBMS158NU;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static valueStream(Landroid/util/SparseArray;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TE;>;)",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 32
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/car/-$$Lambda$xzPthtWZsfpNCV7Z2aMfljhAjQ0;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$xzPthtWZsfpNCV7Z2aMfljhAjQ0;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
