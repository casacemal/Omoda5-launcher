.class public Lcom/android/car/VmsLayersAvailability;
.super Ljava/lang/Object;
.source "VmsLayersAvailability.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VmsLayersAvailability"


# instance fields
.field private mAvailableAssociatedLayers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/car/vms/VmsAssociatedLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPotentialLayersAndDependencies:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/vms/VmsLayer;",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Landroid/car/vms/VmsLayer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPotentialLayersAndPublishers:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/vms/VmsLayer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSeq:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mUnavailableAssociatedLayers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/car/vms/VmsAssociatedLayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsLayersAvailability;->mLock:Ljava/lang/Object;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndDependencies:Ljava/util/Map;

    .line 54
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/car/VmsLayersAvailability;->mAvailableAssociatedLayers:Ljava/util/Set;

    .line 56
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/car/VmsLayersAvailability;->mUnavailableAssociatedLayers:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndPublishers:Ljava/util/Map;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/VmsLayersAvailability;->mSeq:I

    return-void
.end method

.method private addLayerToAvailabilityCalculationLocked(Landroid/car/vms/VmsLayer;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/vms/VmsLayer;",
            "Ljava/util/Set<",
            "Landroid/car/vms/VmsLayer;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/car/vms/VmsLayer;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p2, "currentAvailableLayers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    .local p3, "cyclicAvoidanceSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndDependencies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    return-void

    .line 161
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected a cyclic dependency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VmsLayersAvailability"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndDependencies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 169
    .local v1, "dependencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 174
    :cond_3
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    const/4 v2, 0x1

    .line 177
    .local v2, "isSupported":Z
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/car/vms/VmsLayer;

    .line 178
    .local v4, "dependency":Landroid/car/vms/VmsLayer;
    invoke-direct {p0, v4, p2, p3}, Lcom/android/car/VmsLayersAvailability;->addLayerToAvailabilityCalculationLocked(Landroid/car/vms/VmsLayer;Ljava/util/Set;Ljava/util/Set;)V

    .line 182
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 183
    const/4 v2, 0x0

    .line 184
    goto :goto_2

    .line 186
    .end local v4    # "dependency":Landroid/car/vms/VmsLayer;
    :cond_4
    goto :goto_1

    .line 187
    :cond_5
    :goto_2
    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 189
    if-eqz v2, :cond_6

    .line 190
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    return-void

    .line 193
    .end local v1    # "dependencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    .end local v2    # "isSupported":Z
    :cond_6
    goto :goto_0

    .line 170
    .restart local v1    # "dependencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    :cond_7
    :goto_3
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    return-void

    .line 194
    .end local v1    # "dependencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    :cond_8
    return-void
.end method

.method private calculateLayers()V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/android/car/VmsLayersAvailability;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 122
    .local v1, "availableLayersSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 124
    .local v2, "cyclicAvoidanceAuxiliarySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    iget-object v3, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndDependencies:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/car/vms/VmsLayer;

    .line 125
    .local v4, "layer":Landroid/car/vms/VmsLayer;
    invoke-direct {p0, v4, v1, v2}, Lcom/android/car/VmsLayersAvailability;->addLayerToAvailabilityCalculationLocked(Landroid/car/vms/VmsLayer;Ljava/util/Set;Ljava/util/Set;)V

    .line 128
    .end local v4    # "layer":Landroid/car/vms/VmsLayer;
    goto :goto_0

    .line 130
    :cond_0
    nop

    .line 132
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/car/-$$Lambda$VmsLayersAvailability$kK9fVtlkV2qHr__vOmhp-DNWRzM;

    invoke-direct {v4, p0}, Lcom/android/car/-$$Lambda$VmsLayersAvailability$kK9fVtlkV2qHr__vOmhp-DNWRzM;-><init>(Lcom/android/car/VmsLayersAvailability;)V

    .line 133
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 134
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 130
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/car/VmsLayersAvailability;->mAvailableAssociatedLayers:Ljava/util/Set;

    .line 136
    iget-object v3, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndDependencies:Ljava/util/Map;

    .line 137
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 138
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/car/-$$Lambda$VmsLayersAvailability$IswgpWbrwp22Ep0ME7X_OzQZ1Yw;

    invoke-direct {v4, v1}, Lcom/android/car/-$$Lambda$VmsLayersAvailability$IswgpWbrwp22Ep0ME7X_OzQZ1Yw;-><init>(Ljava/util/Set;)V

    .line 139
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/car/-$$Lambda$VmsLayersAvailability$3eoR_oQql0pTwQF-l0KYinIaX6I;

    invoke-direct {v4, p0}, Lcom/android/car/-$$Lambda$VmsLayersAvailability$3eoR_oQql0pTwQF-l0KYinIaX6I;-><init>(Lcom/android/car/VmsLayersAvailability;)V

    .line 140
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 141
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 136
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/car/VmsLayersAvailability;->mUnavailableAssociatedLayers:Ljava/util/Set;

    .line 142
    .end local v1    # "availableLayersSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    .end local v2    # "cyclicAvoidanceAuxiliarySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$calculateLayers$1(Ljava/util/Set;Landroid/car/vms/VmsLayer;)Z
    .locals 1
    .param p0, "availableLayersSet"    # Ljava/util/Set;
    .param p1, "l"    # Landroid/car/vms/VmsLayer;

    .line 139
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private reset()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/car/VmsLayersAvailability;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndDependencies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 109
    iget-object v1, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndPublishers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 110
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v1, p0, Lcom/android/car/VmsLayersAvailability;->mAvailableAssociatedLayers:Ljava/util/Set;

    .line 111
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v1, p0, Lcom/android/car/VmsLayersAvailability;->mUnavailableAssociatedLayers:Ljava/util/Set;

    .line 112
    iget v1, p0, Lcom/android/car/VmsLayersAvailability;->mSeq:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/car/VmsLayersAvailability;->mSeq:I

    if-lt v1, v2, :cond_0

    .line 115
    iget v1, p0, Lcom/android/car/VmsLayersAvailability;->mSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/VmsLayersAvailability;->mSeq:I

    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Sequence is about to loop"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/car/VmsLayersAvailability;
    throw v1

    .line 116
    .restart local p0    # "this":Lcom/android/car/VmsLayersAvailability;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/android/car/VmsLayersAvailability;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    new-instance v1, Landroid/car/vms/VmsAvailableLayers;

    iget-object v2, p0, Lcom/android/car/VmsLayersAvailability;->mAvailableAssociatedLayers:Ljava/util/Set;

    iget v3, p0, Lcom/android/car/VmsLayersAvailability;->mSeq:I

    invoke-direct {v1, v2, v3}, Landroid/car/vms/VmsAvailableLayers;-><init>(Ljava/util/Set;I)V

    monitor-exit v0

    return-object v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$calculateLayers$0$VmsLayersAvailability(Landroid/car/vms/VmsLayer;)Landroid/car/vms/VmsAssociatedLayer;
    .locals 2
    .param p1, "l"    # Landroid/car/vms/VmsLayer;

    .line 133
    new-instance v0, Landroid/car/vms/VmsAssociatedLayer;

    iget-object v1, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndPublishers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-direct {v0, p1, v1}, Landroid/car/vms/VmsAssociatedLayer;-><init>(Landroid/car/vms/VmsLayer;Ljava/util/Set;)V

    return-object v0
.end method

.method public synthetic lambda$calculateLayers$2$VmsLayersAvailability(Landroid/car/vms/VmsLayer;)Landroid/car/vms/VmsAssociatedLayer;
    .locals 2
    .param p1, "l"    # Landroid/car/vms/VmsLayer;

    .line 140
    new-instance v0, Landroid/car/vms/VmsAssociatedLayer;

    iget-object v1, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndPublishers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-direct {v0, p1, v1}, Landroid/car/vms/VmsAssociatedLayer;-><init>(Landroid/car/vms/VmsLayer;Ljava/util/Set;)V

    return-object v0
.end method

.method public setPublishersOffering(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/car/vms/VmsLayersOffering;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "publishersLayersOfferings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/car/vms/VmsLayersOffering;>;"
    iget-object v0, p0, Lcom/android/car/VmsLayersAvailability;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/VmsLayersAvailability;->reset()V

    .line 70
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/vms/VmsLayersOffering;

    .line 71
    .local v2, "offering":Landroid/car/vms/VmsLayersOffering;
    invoke-virtual {v2}, Landroid/car/vms/VmsLayersOffering;->getDependencies()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/car/vms/VmsLayerDependency;

    .line 72
    .local v4, "dependency":Landroid/car/vms/VmsLayerDependency;
    invoke-virtual {v4}, Landroid/car/vms/VmsLayerDependency;->getLayer()Landroid/car/vms/VmsLayer;

    move-result-object v5

    .line 75
    .local v5, "layer":Landroid/car/vms/VmsLayer;
    iget-object v6, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndPublishers:Ljava/util/Map;

    .line 76
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 77
    .local v6, "curPotentialLayerAndPublishers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v6, :cond_0

    .line 78
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object v6, v7

    .line 79
    iget-object v7, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndPublishers:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    invoke-virtual {v2}, Landroid/car/vms/VmsLayersOffering;->getPublisherId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v7, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndDependencies:Ljava/util/Map;

    .line 85
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 86
    .local v7, "curDependencies":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Landroid/car/vms/VmsLayer;>;>;"
    if-nez v7, :cond_1

    .line 87
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object v7, v8

    .line 88
    iget-object v8, p0, Lcom/android/car/VmsLayersAvailability;->mPotentialLayersAndDependencies:Ljava/util/Map;

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1
    invoke-virtual {v4}, Landroid/car/vms/VmsLayerDependency;->getDependencies()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    nop

    .end local v4    # "dependency":Landroid/car/vms/VmsLayerDependency;
    .end local v5    # "layer":Landroid/car/vms/VmsLayer;
    .end local v6    # "curPotentialLayerAndPublishers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "curDependencies":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Landroid/car/vms/VmsLayer;>;>;"
    goto :goto_1

    .line 92
    .end local v2    # "offering":Landroid/car/vms/VmsLayersOffering;
    :cond_2
    goto :goto_0

    .line 93
    :cond_3
    invoke-direct {p0}, Lcom/android/car/VmsLayersAvailability;->calculateLayers()V

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
