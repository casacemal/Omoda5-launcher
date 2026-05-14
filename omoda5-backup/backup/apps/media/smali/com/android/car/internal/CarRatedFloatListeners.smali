.class public Lcom/android/car/internal/CarRatedFloatListeners;
.super Ljava/lang/Object;
.source "CarRatedFloatListeners.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NANOSECOND_PER_SECOND:F = 1.0E9f


# instance fields
.field protected mLastUpdateTime:J

.field private final mListenersToRate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenersUpdateTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateRate:F


# direct methods
.method protected constructor <init>(F)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mLastUpdateTime:J

    .line 42
    iput p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    return-void
.end method


# virtual methods
.method public addAndUpdateRate(Ljava/lang/Object;F)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)Z"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 87
    iget-object v1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    cmpg-float p1, p1, p2

    const/4 v1, 0x1

    if-gez p1, :cond_0

    .line 89
    iput p2, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget p2, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getListeners()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getRate()F
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public needUpdate(Ljava/lang/Object;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)Z"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 110
    iget-object v1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 112
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p2

    if-gtz v0, :cond_1

    const v0, 0x4e6e6b28    # 1.0E9f

    .line 116
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Float;->longValue()J

    move-result-wide v0

    add-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 118
    iget-object p0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/car/internal/CarRatedFloatListeners;->mUpdateRate:F

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
