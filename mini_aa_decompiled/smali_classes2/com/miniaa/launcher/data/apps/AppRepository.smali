.class public final Lcom/miniaa/launcher/data/apps/AppRepository;
.super Ljava/lang/Object;
.source "AppRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppRepository.kt\ncom/miniaa/launcher/data/apps/AppRepository\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n49#2:122\n51#2:126\n46#3:123\n51#3:125\n105#4:124\n774#5:127\n865#5,2:128\n1663#5,8:130\n1557#5:138\n1628#5,3:139\n1053#5:142\n774#5:143\n865#5,2:144\n1755#5,3:146\n1755#5,3:149\n*S KotlinDebug\n*F\n+ 1 AppRepository.kt\ncom/miniaa/launcher/data/apps/AppRepository\n*L\n20#1:122\n20#1:126\n20#1:123\n20#1:125\n20#1:124\n28#1:127\n28#1:128,2\n29#1:130,8\n30#1:138\n30#1:139,3\n37#1:142\n43#1:143\n43#1:144,2\n82#1:146,3\n104#1:149,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\tH\u0002J\u0010\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\tH\u0002J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\u0016J\u0016\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/miniaa/launcher/data/apps/AppRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "pinnedPackages",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "",
        "getPinnedPackages",
        "()Lkotlinx/coroutines/flow/Flow;",
        "getAllLaunchableApps",
        "",
        "Lcom/miniaa/launcher/data/apps/AppModel;",
        "getMediaAndNavApps",
        "isMediaApp",
        "",
        "packageName",
        "isNavApp",
        "pinApp",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unpinApp",
        "app_systemRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final context:Landroid/content/Context;

.field private final pinnedPackages:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/data/apps/AppRepository;->context:Landroid/content/Context;

    .line 20
    invoke-static {p1}, Lcom/miniaa/launcher/data/apps/AppRepositoryKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 124
    new-instance v0, Lcom/miniaa/launcher/data/apps/AppRepository$special$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/miniaa/launcher/data/apps/AppRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 20
    iput-object v0, p0, Lcom/miniaa/launcher/data/apps/AppRepository;->pinnedPackages:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method private final isMediaApp(Ljava/lang/String;)Z
    .locals 12

    const/16 v0, 0x13

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.spotify.music"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 52
    const-string v1, "com.google.android.apps.youtube.music"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 53
    const-string v1, "com.amazon.mp3"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 54
    const-string v1, "com.apple.android.music"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 55
    const-string v1, "deezer.android.app"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 56
    const-string v1, "com.soundcloud.android"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 57
    const-string v1, "com.pandora.android"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    .line 58
    const-string v1, "com.aspiro.tidal"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    .line 59
    const-string v1, "com.clearchannel.iheartradio.controller"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const/16 v1, 0x9

    .line 60
    const-string v11, "tunein.player"

    aput-object v11, v0, v1

    const/16 v1, 0xa

    .line 61
    const-string v11, "com.jio.media.jiobeats"

    aput-object v11, v0, v1

    const/16 v1, 0xb

    .line 62
    const-string v11, "com.bsbportal.music"

    aput-object v11, v0, v1

    const/16 v1, 0xc

    .line 63
    const-string v11, "com.google.android.youtube"

    aput-object v11, v0, v1

    const/16 v1, 0xd

    .line 64
    const-string v11, "com.google.android.apps.youtube.kids"

    aput-object v11, v0, v1

    const/16 v1, 0xe

    .line 65
    const-string v11, "org.videolan.vlc"

    aput-object v11, v0, v1

    const/16 v1, 0xf

    .line 66
    const-string v11, "com.mxtech.videoplayer.ad"

    aput-object v11, v0, v1

    const/16 v1, 0x10

    .line 67
    const-string v11, "com.mxtech.videoplayer.pro"

    aput-object v11, v0, v1

    const/16 v1, 0x11

    .line 68
    const-string v11, "com.plexapp.android"

    aput-object v11, v0, v1

    const/16 v1, 0x12

    .line 69
    const-string v11, "com.netflix.mediaclient"

    aput-object v11, v0, v1

    .line 50
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 71
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 75
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miniaa/launcher/data/apps/AppRepository;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const-string v0, "getApplicationInfo(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    if-eq v0, v3, :cond_1

    .line 77
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v4, :cond_2

    :cond_1
    return v3

    .line 81
    :catch_0
    :cond_2
    new-array p0, v10, [Ljava/lang/String;

    const-string v0, "music"

    aput-object v0, p0, v2

    const-string v0, "audio"

    aput-object v0, p0, v3

    const-string v0, "player"

    aput-object v0, p0, v4

    const-string v0, "media"

    aput-object v0, p0, v5

    const-string v0, "radio"

    aput-object v0, p0, v6

    const-string v0, "podcast"

    aput-object v0, p0, v7

    const-string v0, "video"

    aput-object v0, p0, v8

    const-string v0, "stream"

    aput-object v0, p0, v9

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 82
    check-cast p0, Ljava/lang/Iterable;

    .line 146
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 147
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    :cond_5
    :goto_0
    return v2
.end method

.method private final isNavApp(Ljava/lang/String;)Z
    .locals 9

    const/16 p0, 0xb

    .line 88
    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "com.google.android.apps.maps"

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 89
    const-string v0, "com.waze"

    const/4 v2, 0x1

    aput-object v0, p0, v2

    .line 90
    const-string v0, "com.sygic.aura"

    const/4 v3, 0x2

    aput-object v0, p0, v3

    .line 91
    const-string v0, "com.tomtom.gplay.navapp"

    const/4 v4, 0x3

    aput-object v0, p0, v4

    .line 92
    const-string v0, "com.here.app.maps"

    const/4 v5, 0x4

    aput-object v0, p0, v5

    .line 93
    const-string v0, "com.mapbox.navigation"

    const/4 v6, 0x5

    aput-object v0, p0, v6

    .line 94
    const-string v0, "com.osmand"

    const/4 v7, 0x6

    aput-object v0, p0, v7

    const/4 v0, 0x7

    .line 95
    const-string v8, "com.osmand.plus"

    aput-object v8, p0, v0

    const/16 v0, 0x8

    .line 96
    const-string v8, "com.mapfactor.navigator"

    aput-object v8, p0, v0

    const/16 v0, 0x9

    .line 97
    const-string v8, "com.autonavi.minimap"

    aput-object v8, p0, v0

    const/16 v0, 0xa

    .line 98
    const-string v8, "com.baidu.BaiduMap"

    aput-object v8, p0, v0

    .line 87
    invoke-static {p0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 100
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    .line 103
    :cond_0
    new-array p0, v7, [Ljava/lang/String;

    const-string v0, "map"

    aput-object v0, p0, v1

    const-string v0, "maps"

    aput-object v0, p0, v2

    const-string v0, "navi"

    aput-object v0, p0, v3

    const-string v0, "navigation"

    aput-object v0, p0, v4

    const-string v0, "gps"

    aput-object v0, p0, v5

    const-string v0, "waze"

    aput-object v0, p0, v6

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 104
    check-cast p0, Ljava/lang/Iterable;

    .line 149
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v3, v0, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public final getAllLaunchableApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addCategory(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/miniaa/launcher/data/apps/AppRepository;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "queryIntentActivities(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    check-cast v0, Ljava/lang/Iterable;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 128
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 28
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miniaa/launcher/data/apps/AppRepository;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 127
    check-cast v1, Ljava/lang/Iterable;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 133
    move-object v4, v3

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 29
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_3
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 139
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 140
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 31
    new-instance v3, Lcom/miniaa/launcher/data/apps/AppModel;

    .line 32
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "packageName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v5, p0, Lcom/miniaa/launcher/data/apps/AppRepository;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 34
    iget-object v6, p0, Lcom/miniaa/launcher/data/apps/AppRepository;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 31
    invoke-direct {v3, v4, v5, v2}, Lcom/miniaa/launcher/data/apps/AppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 141
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 138
    check-cast v0, Ljava/lang/Iterable;

    .line 142
    new-instance p0, Lcom/miniaa/launcher/data/apps/AppRepository$getAllLaunchableApps$$inlined$sortedBy$1;

    invoke-direct {p0}, Lcom/miniaa/launcher/data/apps/AppRepository$getAllLaunchableApps$$inlined$sortedBy$1;-><init>()V

    check-cast p0, Ljava/util/Comparator;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getMediaAndNavApps()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/miniaa/launcher/data/apps/AppRepository;->getAllLaunchableApps()Ljava/util/List;

    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Iterable;

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 144
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/miniaa/launcher/data/apps/AppModel;

    .line 44
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/apps/AppModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miniaa/launcher/data/apps/AppRepository;->isMediaApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/miniaa/launcher/data/apps/AppModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miniaa/launcher/data/apps/AppRepository;->isNavApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getPinnedPackages()Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/miniaa/launcher/data/apps/AppRepository;->pinnedPackages:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final pinApp(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 108
    iget-object p0, p0, Lcom/miniaa/launcher/data/apps/AppRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/apps/AppRepositoryKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/apps/AppRepository$pinApp$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/apps/AppRepository$pinApp$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final unpinApp(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/miniaa/launcher/data/apps/AppRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/apps/AppRepositoryKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/apps/AppRepository$unpinApp$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/apps/AppRepository$unpinApp$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
