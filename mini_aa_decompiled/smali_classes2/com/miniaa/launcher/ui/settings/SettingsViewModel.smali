.class public final Lcom/miniaa/launcher/ui/settings/SettingsViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SettingsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001d\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u00020\u00132\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0015J\u000e\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u001fJ\u000e\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\u001fJ\u000e\u0010%\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u001fJ\u000e\u0010\'\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u001fJ\u000e\u0010)\u001a\u00020\u00132\u0006\u0010*\u001a\u00020\u001fJ\u0010\u0010+\u001a\u00020\u00132\u0008\u0010,\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010-\u001a\u00020\u00132\u0006\u0010!\u001a\u00020\"J\u000e\u0010.\u001a\u00020\u00132\u0006\u0010!\u001a\u00020\"J\u000e\u0010/\u001a\u00020\u00132\u0006\u0010!\u001a\u00020\"J\u000e\u00100\u001a\u00020\u00132\u0006\u00101\u001a\u00020\"J\u000e\u00102\u001a\u00020\u00132\u0006\u00103\u001a\u00020\u000fJ\u000e\u00104\u001a\u00020\u00132\u0006\u00105\u001a\u00020\"J\u000e\u00106\u001a\u00020\u00132\u0006\u00107\u001a\u00020\"J\u000e\u00108\u001a\u00020\u00132\u0006\u00109\u001a\u00020\"J\u000e\u0010:\u001a\u00020\u00132\u0006\u0010;\u001a\u00020\"J\u000e\u0010<\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0015J\u0010\u0010=\u001a\u00020\u00132\u0008\u0010,\u001a\u0004\u0018\u00010\u000fJ\u0006\u0010>\u001a\u00020\u0013R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\u00a8\u0006?"
    }
    d2 = {
        "Lcom/miniaa/launcher/ui/settings/SettingsViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "repository",
        "Lcom/miniaa/launcher/data/settings/SettingsRepository;",
        "settings",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/miniaa/launcher/data/settings/LauncherSettings;",
        "getSettings",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_diagnosticLog",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "diagnosticLog",
        "getDiagnosticLog",
        "setLeftPanelWeight",
        "",
        "weight",
        "",
        "setBackgroundUri",
        "uri",
        "setBackgroundOpacity",
        "opacity",
        "setBackgroundColor",
        "colorLong",
        "",
        "setSpeedThreshold",
        "kmh",
        "",
        "setShowLocation",
        "show",
        "",
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
        "refreshDiagnostics",
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
.field private final _diagnosticLog:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final diagnosticLog:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final repository:Lcom/miniaa/launcher/data/settings/SettingsRepository;

.field private final settings:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
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

.method public constructor <init>(Landroid/app/Application;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "application"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 18
    new-instance v2, Lcom/miniaa/launcher/data/settings/SettingsRepository;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/miniaa/launcher/data/settings/SettingsRepository;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel;->repository:Lcom/miniaa/launcher/data/settings/SettingsRepository;

    .line 20
    invoke-virtual {v2}, Lcom/miniaa/launcher/data/settings/SettingsRepository;->getSettings()Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    .line 21
    move-object v3, v0

    check-cast v3, Landroidx/lifecycle/ViewModel;

    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getEagerly()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v4

    new-instance v15, Lcom/miniaa/launcher/data/settings/LauncherSettings;

    move-object v5, v15

    const v29, 0x3fffff

    const/16 v30, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v31, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v5 .. v30}, Lcom/miniaa/launcher/data/settings/LauncherSettings;-><init>(FLjava/lang/String;FJLjava/lang/String;IIIIZIFZZZZLjava/lang/String;ZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v31

    invoke-static {v2, v3, v4, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel;->settings:Lkotlinx/coroutines/flow/StateFlow;

    .line 23
    const-string v2, ""

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel;->_diagnosticLog:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 24
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel;->diagnosticLog:Lkotlinx/coroutines/flow/StateFlow;

    .line 27
    sget-object v0, Lcom/miniaa/launcher/taskview/TaskViewWrapper;->Companion:Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;

    invoke-virtual {v0, v1}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;)Lcom/miniaa/launcher/data/settings/SettingsRepository;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel;->repository:Lcom/miniaa/launcher/data/settings/SettingsRepository;

    return-object p0
.end method


# virtual methods
.method public final getDiagnosticLog()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel;->diagnosticLog:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getSettings()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/miniaa/launcher/data/settings/LauncherSettings;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel;->settings:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final refreshDiagnostics()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel;->_diagnosticLog:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/miniaa/launcher/taskview/TaskViewWrapper;->Companion:Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;

    invoke-virtual {p0}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/miniaa/launcher/taskview/TaskViewWrapper$Companion;->diagnose(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setBackgroundColor(J)V
    .locals 7

    .line 43
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setBackgroundColor$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setBackgroundColor$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;JLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setBackgroundOpacity(F)V
    .locals 7

    .line 39
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setBackgroundOpacity$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setBackgroundOpacity$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;FLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setBackgroundUri(Ljava/lang/String;)V
    .locals 7

    .line 35
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setBackgroundUri$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setBackgroundUri$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setCompactWeather(Z)V
    .locals 7

    .line 87
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setCompactWeather$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setCompactWeather$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setDefaultMusicApp(Ljava/lang/String;)V
    .locals 7

    .line 115
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setDefaultMusicApp$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setDefaultMusicApp$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setDefaultPipApp(Ljava/lang/String;)V
    .locals 7

    .line 71
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setDefaultPipApp$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setDefaultPipApp$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setGeocodeDistance(I)V
    .locals 7

    .line 55
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setGeocodeDistance$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setGeocodeDistance$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setGeocodeInterval(I)V
    .locals 7

    .line 59
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setGeocodeInterval$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setGeocodeInterval$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setGeocoderType(Ljava/lang/String;)V
    .locals 7

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setGeocoderType$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setGeocoderType$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setGridColumns(I)V
    .locals 7

    .line 63
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setGridColumns$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setGridColumns$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setGridRows(I)V
    .locals 7

    .line 67
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setGridRows$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setGridRows$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setLeftPanelWeight(F)V
    .locals 7

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setLeftPanelWeight$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setLeftPanelWeight$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;FLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setShowIdleAnimation(Z)V
    .locals 7

    .line 79
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setShowIdleAnimation$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setShowIdleAnimation$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setShowLocation(Z)V
    .locals 7

    .line 51
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setShowLocation$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setShowLocation$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setShowMic(Z)V
    .locals 7

    .line 75
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setShowMic$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setShowMic$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setShowTripInfo(Z)V
    .locals 7

    .line 83
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setShowTripInfo$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setShowTripInfo$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setSpeedMph(Z)V
    .locals 7

    .line 99
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setSpeedMph$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setSpeedMph$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setSpeedThreshold(I)V
    .locals 7

    .line 47
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setSpeedThreshold$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setSpeedThreshold$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setTempF(Z)V
    .locals 7

    .line 103
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setTempF$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setTempF$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setTripRecording(Z)V
    .locals 7

    .line 95
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setTripRecording$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setTripRecording$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setUseImperial(Z)V
    .locals 7

    .line 107
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setUseImperial$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setUseImperial$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setWeatherCardOpacity(F)V
    .locals 7

    .line 111
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setWeatherCardOpacity$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/settings/SettingsViewModel$setWeatherCardOpacity$1;-><init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;FLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
