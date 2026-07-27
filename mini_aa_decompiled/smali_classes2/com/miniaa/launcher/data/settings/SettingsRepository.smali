.class public final Lcom/miniaa/launcher/data/settings/SettingsRepository;
.super Ljava/lang/Object;
.source "SettingsRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsRepository.kt\ncom/miniaa/launcher/data/settings/SettingsRepository\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,231:1\n49#2:232\n51#2:236\n46#3:233\n51#3:235\n105#4:234\n*S KotlinDebug\n*F\n+ 1 SettingsRepository.kt\ncom/miniaa/launcher/data/settings/SettingsRepository\n*L\n69#1:232\n69#1:236\n69#1:233\n69#1:235\n69#1:234\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001d\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u0018\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0086@\u00a2\u0006\u0002\u0010\u0013J\u0016\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u0016\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u0019J\u0016\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u001cH\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010!J\u0016\u0010\"\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u001cH\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010$\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u001cH\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010&\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020\u001cH\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010(\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u001cH\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u0018\u0010*\u001a\u00020\u000c2\u0008\u0010+\u001a\u0004\u0018\u00010\u0012H\u0086@\u00a2\u0006\u0002\u0010\u0013J\u0016\u0010,\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010!J\u0016\u0010-\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010!J\u0016\u0010.\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010!J\u0016\u0010/\u001a\u00020\u000c2\u0006\u00100\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010!J\u0016\u00101\u001a\u00020\u000c2\u0006\u00102\u001a\u00020\u0012H\u0086@\u00a2\u0006\u0002\u0010\u0013J\u0016\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010!J\u0016\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010!J\u0016\u00107\u001a\u00020\u000c2\u0006\u00108\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010!J\u0016\u00109\u001a\u00020\u000c2\u0006\u0010:\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010!J\u0016\u0010;\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u0018\u0010<\u001a\u00020\u000c2\u0008\u0010+\u001a\u0004\u0018\u00010\u0012H\u0086@\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006="
    }
    d2 = {
        "Lcom/miniaa/launcher/data/settings/SettingsRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "settings",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/miniaa/launcher/data/settings/LauncherSettings;",
        "getSettings",
        "()Lkotlinx/coroutines/flow/Flow;",
        "setLeftPanelWeight",
        "",
        "weight",
        "",
        "(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setBackgroundUri",
        "uri",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setBackgroundOpacity",
        "opacity",
        "setBackgroundColor",
        "colorLong",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setSpeedThreshold",
        "kmh",
        "",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setShowLocation",
        "show",
        "",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setGeocodeDistance",
        "meters",
        "setGeocodeInterval",
        "seconds",
        "setGridColumns",
        "cols",
        "setGridRows",
        "rows",
        "setDefaultPipApp",
        "packageName",
        "setShowMic",
        "setShowIdleAnimation",
        "setShowTripInfo",
        "setCompactWeather",
        "compact",
        "setGeocoderType",
        "type",
        "setTripRecording",
        "enabled",
        "setSpeedMph",
        "mph",
        "setTempF",
        "fahrenheit",
        "setUseImperial",
        "imperial",
        "setWeatherCardOpacity",
        "setDefaultMusicApp",
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

.field private final settings:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/miniaa/launcher/data/settings/LauncherSettings;",
            ">;"
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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 234
    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 69
    iput-object v0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->settings:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final getSettings()Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/miniaa/launcher/data/settings/LauncherSettings;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->settings:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final setBackgroundColor(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 116
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setBackgroundColor$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setBackgroundColor$2;-><init>(JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0, p3}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final setBackgroundOpacity(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setBackgroundOpacity$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setBackgroundOpacity$2;-><init>(FLkotlin/coroutines/Continuation;)V

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

.method public final setBackgroundUri(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 103
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setBackgroundUri$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setBackgroundUri$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

.method public final setCompactWeather(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 183
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setCompactWeather$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setCompactWeather$2;-><init>(ZLkotlin/coroutines/Continuation;)V

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

.method public final setDefaultMusicApp(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 225
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setDefaultMusicApp$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setDefaultMusicApp$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

.method public final setDefaultPipApp(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 158
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setDefaultPipApp$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setDefaultPipApp$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

.method public final setGeocodeDistance(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 134
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setGeocodeDistance$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setGeocodeDistance$2;-><init>(ILkotlin/coroutines/Continuation;)V

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

.method public final setGeocodeInterval(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setGeocodeInterval$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setGeocodeInterval$2;-><init>(ILkotlin/coroutines/Continuation;)V

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

.method public final setGeocoderType(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 189
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setGeocoderType$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setGeocoderType$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

.method public final setGridColumns(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setGridColumns$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setGridColumns$2;-><init>(ILkotlin/coroutines/Continuation;)V

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

.method public final setGridRows(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 152
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setGridRows$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setGridRows$2;-><init>(ILkotlin/coroutines/Continuation;)V

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

.method public final setLeftPanelWeight(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 97
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setLeftPanelWeight$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setLeftPanelWeight$2;-><init>(FLkotlin/coroutines/Continuation;)V

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

.method public final setShowIdleAnimation(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setShowIdleAnimation$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setShowIdleAnimation$2;-><init>(ZLkotlin/coroutines/Continuation;)V

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

.method public final setShowLocation(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 128
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setShowLocation$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setShowLocation$2;-><init>(ZLkotlin/coroutines/Continuation;)V

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

.method public final setShowMic(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 165
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setShowMic$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setShowMic$2;-><init>(ZLkotlin/coroutines/Continuation;)V

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

.method public final setShowTripInfo(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 177
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setShowTripInfo$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setShowTripInfo$2;-><init>(ZLkotlin/coroutines/Continuation;)V

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

.method public final setSpeedMph(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 201
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setSpeedMph$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setSpeedMph$2;-><init>(ZLkotlin/coroutines/Continuation;)V

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

.method public final setSpeedThreshold(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setSpeedThreshold$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setSpeedThreshold$2;-><init>(ILkotlin/coroutines/Continuation;)V

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

.method public final setTempF(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 207
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setTempF$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setTempF$2;-><init>(ZLkotlin/coroutines/Continuation;)V

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

.method public final setTripRecording(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 195
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setTripRecording$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setTripRecording$2;-><init>(ZLkotlin/coroutines/Continuation;)V

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

.method public final setUseImperial(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 213
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setUseImperial$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setUseImperial$2;-><init>(ZLkotlin/coroutines/Continuation;)V

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

.method public final setWeatherCardOpacity(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 219
    iget-object p0, p0, Lcom/miniaa/launcher/data/settings/SettingsRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miniaa/launcher/data/settings/SettingsRepositoryKt;->access$getSettingsStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/data/settings/SettingsRepository$setWeatherCardOpacity$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository$setWeatherCardOpacity$2;-><init>(FLkotlin/coroutines/Continuation;)V

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
