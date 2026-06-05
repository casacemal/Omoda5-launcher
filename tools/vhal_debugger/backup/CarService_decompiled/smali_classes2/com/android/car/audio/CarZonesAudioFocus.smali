.class Lcom/android/car/audio/CarZonesAudioFocus;
.super Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
.source "CarZonesAudioFocus.java"


# instance fields
.field private mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private mCarAudioService:Lcom/android/car/audio/CarAudioService;

.field private final mFocusZones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/audio/CarAudioFocus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/content/pm/PackageManager;[Lcom/android/car/audio/CarAudioZone;)V
    .locals 6
    .param p1, "audioManager"    # Landroid/media/AudioManager;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "carAudioZones"    # [Lcom/android/car/audio/CarAudioZone;

    .line 51
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mFocusZones:Ljava/util/Map;

    .line 55
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    array-length v0, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "There must be a minimum of one audio zone"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 60
    array-length v0, p3

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    .line 61
    .local v2, "audioZone":Lcom/android/car/audio/CarAudioZone;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CarZonesAudioFocus adding new zone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Lcom/android/car/audio/CarAudioZone;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    const-string v4, "CAR.AUDIO"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v3, Lcom/android/car/audio/CarAudioFocus;

    invoke-direct {v3, p1, p2}, Lcom/android/car/audio/CarAudioFocus;-><init>(Landroid/media/AudioManager;Landroid/content/pm/PackageManager;)V

    .line 64
    .local v3, "zoneFocusListener":Lcom/android/car/audio/CarAudioFocus;
    iget-object v4, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mFocusZones:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/car/audio/CarAudioZone;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v2    # "audioZone":Lcom/android/car/audio/CarAudioZone;
    .end local v3    # "zoneFocusListener":Lcom/android/car/audio/CarAudioFocus;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    :cond_1
    return-void
.end method

.method private getFocusForAudioFocusInfo(Landroid/media/AudioFocusInfo;)Lcom/android/car/audio/CarAudioFocus;
    .locals 4
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 149
    iget-object v0, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/audio/CarAudioService;->getZoneIdForUid(I)I

    move-result v0

    .line 153
    .local v0, "zoneId":I
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 155
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 156
    const/4 v2, -0x1

    .line 157
    const-string v3, "android.car.media.AUDIOFOCUS_EXTRA_REQUEST_ZONE_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 160
    .local v2, "bundleZoneId":I
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    .line 161
    invoke-virtual {v3}, Lcom/android/car/audio/CarAudioService;->getAudioZoneIds()[I

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 162
    move v0, v2

    .line 166
    .end local v2    # "bundleZoneId":I
    :cond_0
    iget-object v2, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mFocusZones:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/audio/CarAudioFocus;

    .line 167
    .local v2, "focus":Lcom/android/car/audio/CarAudioFocus;
    return-object v2
.end method

.method static synthetic lambda$dump$0(I)[Ljava/lang/Integer;
    .locals 1
    .param p0, "x$0"    # I

    .line 180
    new-array v0, p0, [Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method declared-synchronized dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 177
    :try_start_0
    const-string v0, "%s*CarZonesAudioFocus*\n"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 179
    const-string v0, "%s\tCar Zones Audio Focus Listeners:\n"

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 180
    iget-object v0, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mFocusZones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/car/audio/-$$Lambda$CarZonesAudioFocus$FUzFR3OoKieFU1_dV7-Sxh-L5Ug;->INSTANCE:Lcom/android/car/audio/-$$Lambda$CarZonesAudioFocus$FUzFR3OoKieFU1_dV7-Sxh-L5Ug;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 181
    .local v0, "keys":[Ljava/lang/Integer;
    array-length v2, v0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 182
    .local v5, "zoneId":Ljava/lang/Integer;
    const-string v6, "%s\tZone Id: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 183
    iget-object v6, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mFocusZones:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/car/audio/CarAudioFocus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Lcom/android/car/audio/CarAudioFocus;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v5    # "zoneId":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    .end local p0    # "this":Lcom/android/car/audio/CarZonesAudioFocus;
    :cond_0
    monitor-exit p0

    return-void

    .line 176
    .end local v0    # "keys":[Ljava/lang/Integer;
    .end local p1    # "indent":Ljava/lang/String;
    .end local p2    # "writer":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getAudioFocusHoldersForUid(II)Ljava/util/ArrayList;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "zoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mFocusZones:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/audio/CarAudioFocus;

    .line 88
    .local v0, "focus":Lcom/android/car/audio/CarAudioFocus;
    invoke-virtual {v0, p1}, Lcom/android/car/audio/CarAudioFocus;->getAudioFocusHoldersForUid(I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method getAudioFocusLosersForUid(II)Ljava/util/ArrayList;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "zoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mFocusZones:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/audio/CarAudioFocus;

    .line 77
    .local v0, "focus":Lcom/android/car/audio/CarAudioFocus;
    invoke-virtual {v0, p1}, Lcom/android/car/audio/CarAudioFocus;->getAudioFocusLosersForUid(I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    .locals 1
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarZonesAudioFocus;->getFocusForAudioFocusInfo(Landroid/media/AudioFocusInfo;)Lcom/android/car/audio/CarAudioFocus;

    move-result-object v0

    .line 142
    .local v0, "focus":Lcom/android/car/audio/CarAudioFocus;
    invoke-virtual {v0, p1}, Lcom/android/car/audio/CarAudioFocus;->onAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V

    .line 143
    return-void
.end method

.method public onAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    .locals 1
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 130
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarZonesAudioFocus;->getFocusForAudioFocusInfo(Landroid/media/AudioFocusInfo;)Lcom/android/car/audio/CarAudioFocus;

    move-result-object v0

    .line 131
    .local v0, "focus":Lcom/android/car/audio/CarAudioFocus;
    invoke-virtual {v0, p1, p2}, Lcom/android/car/audio/CarAudioFocus;->onAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V

    .line 132
    return-void
.end method

.method reevaluateAndRegainAudioFocus(Landroid/media/AudioFocusInfo;)I
    .locals 2
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarZonesAudioFocus;->getFocusForAudioFocusInfo(Landroid/media/AudioFocusInfo;)Lcom/android/car/audio/CarAudioFocus;

    move-result-object v0

    .line 107
    .local v0, "focus":Lcom/android/car/audio/CarAudioFocus;
    invoke-virtual {v0, p1}, Lcom/android/car/audio/CarAudioFocus;->reevaluateAndRegainAudioFocus(Landroid/media/AudioFocusInfo;)I

    move-result v1

    return v1
.end method

.method setOwningPolicy(Lcom/android/car/audio/CarAudioService;Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 5
    .param p1, "audioService"    # Lcom/android/car/audio/CarAudioService;
    .param p2, "parentPolicy"    # Landroid/media/audiopolicy/AudioPolicy;

    .line 120
    iput-object p1, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    .line 121
    iput-object p2, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 123
    iget-object v0, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mFocusZones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 124
    .local v1, "zoneId":I
    iget-object v2, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mFocusZones:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/audio/CarAudioFocus;

    iget-object v3, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    iget-object v4, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v2, v3, v4}, Lcom/android/car/audio/CarAudioFocus;->setOwningPolicy(Lcom/android/car/audio/CarAudioService;Landroid/media/audiopolicy/AudioPolicy;)V

    .line 125
    .end local v1    # "zoneId":I
    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method transientlyLoseInFocusInZone(Ljava/util/ArrayList;I)V
    .locals 3
    .param p2, "zoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioFocusInfo;",
            ">;I)V"
        }
    .end annotation

    .line 98
    .local p1, "afiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioFocusInfo;>;"
    iget-object v0, p0, Lcom/android/car/audio/CarZonesAudioFocus;->mFocusZones:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/audio/CarAudioFocus;

    .line 100
    .local v0, "focus":Lcom/android/car/audio/CarAudioFocus;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFocusInfo;

    .line 101
    .local v2, "info":Landroid/media/AudioFocusInfo;
    invoke-virtual {v0, v2}, Lcom/android/car/audio/CarAudioFocus;->removeAudioFocusInfoAndTransientlyLoseFocus(Landroid/media/AudioFocusInfo;)V

    .line 102
    .end local v2    # "info":Landroid/media/AudioFocusInfo;
    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method
