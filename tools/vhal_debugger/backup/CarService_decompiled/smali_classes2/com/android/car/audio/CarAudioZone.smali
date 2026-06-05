.class Lcom/android/car/audio/CarAudioZone;
.super Ljava/lang/Object;
.source "CarAudioZone.java"


# instance fields
.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mPhysicalDisplayAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/DisplayAddress$Physical;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/audio/CarVolumeGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/android/car/audio/CarAudioZone;->mId:I

    .line 51
    iput-object p2, p0, Lcom/android/car/audio/CarAudioZone;->mName:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioZone;->mVolumeGroups:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioZone;->mPhysicalDisplayAddresses:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method addPhysicalDisplayAddress(Landroid/view/DisplayAddress$Physical;)V
    .locals 1
    .param p1, "physicalDisplayAddress"    # Landroid/view/DisplayAddress$Physical;

    .line 101
    iget-object v0, p0, Lcom/android/car/audio/CarAudioZone;->mPhysicalDisplayAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method addVolumeGroup(Lcom/android/car/audio/CarVolumeGroup;)V
    .locals 1
    .param p1, "volumeGroup"    # Lcom/android/car/audio/CarVolumeGroup;

    .line 69
    iget-object v0, p0, Lcom/android/car/audio/CarAudioZone;->mVolumeGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 174
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v2, p0, Lcom/android/car/audio/CarAudioZone;->mName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iget v2, p0, Lcom/android/car/audio/CarAudioZone;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    invoke-virtual {p0}, Lcom/android/car/audio/CarAudioZone;->isPrimaryZone()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v0, v5

    const-string v2, "%sCarAudioZone(%s:%d) isPrimary? %b\n"

    invoke-virtual {p2, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 175
    iget-object v0, p0, Lcom/android/car/audio/CarAudioZone;->mPhysicalDisplayAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v5, "\t"

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/DisplayAddress$Physical;

    .line 176
    .local v2, "physical":Landroid/view/DisplayAddress$Physical;
    invoke-virtual {v2}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v6

    int-to-long v6, v6

    .line 177
    .local v6, "port":J
    new-array v8, v4, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v3

    const-string v5, "%sDisplayAddress.Physical(%d)\n"

    invoke-virtual {p2, v5, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 178
    .end local v2    # "physical":Landroid/view/DisplayAddress$Physical;
    .end local v6    # "port":J
    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 181
    iget-object v0, p0, Lcom/android/car/audio/CarAudioZone;->mVolumeGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/audio/CarVolumeGroup;

    .line 182
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/car/audio/CarVolumeGroup;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 183
    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 185
    return-void
.end method

.method getAudioDeviceInfos()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    iget-object v1, p0, Lcom/android/car/audio/CarAudioZone;->mVolumeGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/audio/CarVolumeGroup;

    .line 84
    .local v2, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v2}, Lcom/android/car/audio/CarVolumeGroup;->getBusNumbers()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget v6, v3, v5

    .line 85
    .local v6, "busNumber":I
    invoke-virtual {v2, v6}, Lcom/android/car/audio/CarVolumeGroup;->getCarAudioDeviceInfoForBus(I)Lcom/android/car/audio/CarAudioDeviceInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/car/audio/CarAudioDeviceInfo;->getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v6    # "busNumber":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 87
    .end local v2    # "group":Lcom/android/car/audio/CarVolumeGroup;
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    return-object v0
.end method

.method getId()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/android/car/audio/CarAudioZone;->mId:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/car/audio/CarAudioZone;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPhysicalDisplayAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/DisplayAddress$Physical;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/car/audio/CarAudioZone;->mPhysicalDisplayAddresses:Ljava/util/List;

    return-object v0
.end method

.method getVolumeGroup(I)Lcom/android/car/audio/CarVolumeGroup;
    .locals 3
    .param p1, "groupId"    # I

    .line 73
    iget-object v0, p0, Lcom/android/car/audio/CarAudioZone;->mVolumeGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/car/audio/CarAudioZone;->mVolumeGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/audio/CarVolumeGroup;

    return-object v0
.end method

.method getVolumeGroupCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/car/audio/CarAudioZone;->mVolumeGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getVolumeGroups()[Lcom/android/car/audio/CarVolumeGroup;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/car/audio/CarAudioZone;->mVolumeGroups:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/car/audio/CarVolumeGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/audio/CarVolumeGroup;

    return-object v0
.end method

.method isPrimaryZone()Z
    .locals 1

    .line 65
    iget v0, p0, Lcom/android/car/audio/CarAudioZone;->mId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synchronizeCurrentGainIndex()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/car/audio/CarAudioZone;->mVolumeGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/audio/CarVolumeGroup;

    .line 169
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v1}, Lcom/android/car/audio/CarVolumeGroup;->getCurrentGainIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/car/audio/CarVolumeGroup;->setCurrentGainIndex(I)V

    .line 170
    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method validateVolumeGroups()Z
    .locals 11

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 133
    .local v0, "contextSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 134
    .local v1, "busNumberSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/car/audio/CarAudioZone;->mVolumeGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "CAR.AUDIO"

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/audio/CarVolumeGroup;

    .line 136
    .local v3, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v3}, Lcom/android/car/audio/CarVolumeGroup;->getContexts()[I

    move-result-object v6

    array-length v7, v6

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_1

    aget v9, v6, v8

    .line 137
    .local v9, "context":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Context appears in two groups: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v5

    .line 141
    :cond_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v9    # "context":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {v3}, Lcom/android/car/audio/CarVolumeGroup;->getBusNumbers()[I

    move-result-object v6

    array-length v7, v6

    move v8, v5

    :goto_2
    if-ge v8, v7, :cond_3

    aget v9, v6, v8

    .line 146
    .local v9, "busNumber":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bus appears in two groups: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v5

    .line 150
    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v9    # "busNumber":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 152
    .end local v3    # "group":Lcom/android/car/audio/CarVolumeGroup;
    :cond_3
    goto :goto_0

    .line 155
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    sget-object v3, Lcom/android/car/audio/CarAudioDynamicRouting;->CONTEXT_NUMBERS:[I

    array-length v3, v3

    if-eq v2, v3, :cond_5

    .line 156
    const-string v2, "Some contexts are not assigned to group"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assigned contexts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v5, [Ljava/lang/Integer;

    .line 158
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All contexts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/car/audio/CarAudioDynamicRouting;->CONTEXT_NUMBERS:[I

    .line 160
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v5

    .line 164
    :cond_5
    const/4 v2, 0x1

    return v2
.end method
