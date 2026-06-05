.class public abstract Lcom/android/settingslib/net/NetworkCycleDataLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "NetworkCycleDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/AsyncTaskLoader<",
        "TD;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkCycleDataLoader"


# instance fields
.field private final mCycles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field final mNetworkStatsService:Landroid/net/INetworkStatsService;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected final mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private final mPolicy:Landroid/net/NetworkPolicy;


# direct methods
.method protected constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/android/settingslib/net/NetworkCycleDataLoader;, "Lcom/android/settingslib/net/NetworkCycleDataLoader<TD;>;"
    .local p1, "builder":Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;, "Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder<*>;"
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->access$100(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 61
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->access$200(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mCycles:Ljava/util/ArrayList;

    .line 62
    nop

    .line 63
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "netstats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 64
    nop

    .line 65
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    .line 66
    new-instance v0, Lcom/android/settingslib/NetworkPolicyEditor;

    .line 67
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    .line 68
    .local v0, "policyEditor":Lcom/android/settingslib/NetworkPolicyEditor;
    invoke-virtual {v0}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    .line 69
    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mPolicy:Landroid/net/NetworkPolicy;

    .line 70
    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder<",
            "*>;"
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/android/settingslib/net/NetworkCycleDataLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method abstract getCycleUsage()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public getCycles()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lcom/android/settingslib/net/NetworkCycleDataLoader;, "Lcom/android/settingslib/net/NetworkCycleDataLoader<TD;>;"
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mCycles:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getTotalUsage(Landroid/app/usage/NetworkStats;)J
    .locals 7
    .param p1, "stats"    # Landroid/app/usage/NetworkStats;

    .line 161
    .local p0, "this":Lcom/android/settingslib/net/NetworkCycleDataLoader;, "Lcom/android/settingslib/net/NetworkCycleDataLoader<TD;>;"
    const-wide/16 v0, 0x0

    .line 162
    .local v0, "bytes":J
    if-eqz p1, :cond_1

    .line 163
    new-instance v2, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v2}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 164
    .local v2, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v5

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->close()V

    .line 169
    .end local v2    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :cond_1
    return-wide v0
.end method

.method loadDataForSpecificCycles()V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 137
    .local p0, "this":Lcom/android/settingslib/net/NetworkCycleDataLoader;, "Lcom/android/settingslib/net/NetworkCycleDataLoader<TD;>;"
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mCycles:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 138
    .local v0, "cycleEnd":J
    iget-object v2, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 139
    .local v2, "lastCycleIndex":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_0

    .line 140
    iget-object v4, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 141
    .local v4, "cycleStart":J
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->recordUsage(JJ)V

    .line 142
    move-wide v0, v4

    .line 139
    .end local v4    # "cycleStart":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method loadFourWeeksData()V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 116
    .local p0, "this":Lcom/android/settingslib/net/NetworkCycleDataLoader;, "Lcom/android/settingslib/net/NetworkCycleDataLoader<TD;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    .line 117
    .local v0, "networkSession":Landroid/net/INetworkStatsSession;
    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    .line 119
    .local v1, "networkHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    .line 120
    .local v2, "historyStart":J
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    .line 122
    .local v4, "historyEnd":J
    move-wide v6, v4

    .line 123
    .local v6, "cycleEnd":J
    :goto_0
    cmp-long v8, v6, v2

    if-lez v8, :cond_0

    .line 124
    const-wide v8, 0x90321000L

    sub-long v8, v6, v8

    .line 125
    .local v8, "cycleStart":J
    invoke-virtual {p0, v8, v9, v6, v7}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->recordUsage(JJ)V

    .line 126
    move-wide v6, v8

    .line 127
    .end local v8    # "cycleStart":J
    goto :goto_0

    .line 129
    :cond_0
    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "networkSession":Landroid/net/INetworkStatsSession;
    .end local v1    # "networkHistory":Landroid/net/NetworkStatsHistory;
    .end local v2    # "historyStart":J
    .end local v4    # "historyEnd":J
    .end local v6    # "cycleEnd":J
    nop

    .line 133
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public loadInBackground()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/android/settingslib/net/NetworkCycleDataLoader;, "Lcom/android/settingslib/net/NetworkCycleDataLoader<TD;>;"
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mCycles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->loadDataForSpecificCycles()V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mPolicy:Landroid/net/NetworkPolicy;

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->loadFourWeeksData()V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->loadPolicyData()V

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->getCycleUsage()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method loadPolicyData()V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 91
    .local p0, "this":Lcom/android/settingslib/net/NetworkCycleDataLoader;, "Lcom/android/settingslib/net/NetworkCycleDataLoader<TD;>;"
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mPolicy:Landroid/net/NetworkPolicy;

    .line 92
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    .line 93
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 95
    .local v1, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 96
    .local v2, "cycleStart":J
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/time/ZonedDateTime;

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 97
    .local v4, "cycleEnd":J
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->recordUsage(JJ)V

    .line 98
    .end local v1    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v2    # "cycleStart":J
    .end local v4    # "cycleEnd":J
    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 0

    .line 109
    .local p0, "this":Lcom/android/settingslib/net/NetworkCycleDataLoader;, "Lcom/android/settingslib/net/NetworkCycleDataLoader<TD;>;"
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onReset()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->cancelLoad()Z

    .line 111
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .line 74
    .local p0, "this":Lcom/android/settingslib/net/NetworkCycleDataLoader;, "Lcom/android/settingslib/net/NetworkCycleDataLoader<TD;>;"
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onStartLoading()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->forceLoad()V

    .line 76
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 103
    .local p0, "this":Lcom/android/settingslib/net/NetworkCycleDataLoader;, "Lcom/android/settingslib/net/NetworkCycleDataLoader<TD;>;"
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onStopLoading()V

    .line 104
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->cancelLoad()Z

    .line 105
    return-void
.end method

.method abstract recordUsage(JJ)V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method
