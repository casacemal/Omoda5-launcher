.class Lcom/android/car/SlidingWindow;
.super Ljava/lang/Object;
.source "SlidingWindow.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mElements:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 32
    .local p0, "this":Lcom/android/car/SlidingWindow;, "Lcom/android/car/SlidingWindow<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/car/SlidingWindow;->mMaxSize:I

    .line 34
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/android/car/SlidingWindow;->mMaxSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/car/SlidingWindow;->mElements:Ljava/util/ArrayDeque;

    .line 35
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/android/car/SlidingWindow;, "Lcom/android/car/SlidingWindow<TT;>;"
    .local p1, "sample":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/car/SlidingWindow;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/car/SlidingWindow;->mMaxSize:I

    if-ne v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/car/SlidingWindow;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/car/SlidingWindow;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/android/car/SlidingWindow;, "Lcom/android/car/SlidingWindow<TT;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    new-instance v0, Lcom/android/car/-$$Lambda$SdrTrmIMzFfe9jslxET-9slhemo;

    invoke-direct {v0, p0}, Lcom/android/car/-$$Lambda$SdrTrmIMzFfe9jslxET-9slhemo;-><init>(Lcom/android/car/SlidingWindow;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 46
    return-void
.end method

.method public count(Ljava/util/function/Predicate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/android/car/SlidingWindow;, "Lcom/android/car/SlidingWindow<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-virtual {p0}, Lcom/android/car/SlidingWindow;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/android/car/SlidingWindow;, "Lcom/android/car/SlidingWindow<TT;>;"
    iget-object v0, p0, Lcom/android/car/SlidingWindow;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 58
    .local p0, "this":Lcom/android/car/SlidingWindow;, "Lcom/android/car/SlidingWindow<TT;>;"
    iget-object v0, p0, Lcom/android/car/SlidingWindow;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/android/car/SlidingWindow;, "Lcom/android/car/SlidingWindow<TT;>;"
    iget-object v0, p0, Lcom/android/car/SlidingWindow;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
