.class final Lcom/miniaa/launcher/MainActivity$onCreate$1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/MainActivity$onCreate$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/miniaa/launcher/MainActivity$onCreate$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 ViewModel.kt\nandroidx/lifecycle/viewmodel/compose/ViewModelKt__ViewModelKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,251:1\n1225#2,6:252\n1225#2,6:258\n55#3,11:264\n55#3,11:275\n55#3,11:286\n55#3,11:297\n81#4:308\n107#4,2:309\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/miniaa/launcher/MainActivity$onCreate$1$1\n*L\n92#1:252,6\n98#1:258,6\n111#1:264,11\n113#1:275,11\n114#1:286,11\n115#1:297,11\n92#1:308\n92#1:309,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniaa/launcher/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$pGQ8fdJUasQhVBfrRGvKNIcbKww(Landroid/content/SharedPreferences;Lcom/miniaa/launcher/MainActivity;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miniaa/launcher/MainActivity$onCreate$1$1;->invoke$lambda$4$lambda$3(Landroid/content/SharedPreferences;Lcom/miniaa/launcher/MainActivity;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/miniaa/launcher/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/MainActivity$onCreate$1$1;->this$0:Lcom/miniaa/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1(Landroidx/compose/runtime/MutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 92
    check-cast p0, Landroidx/compose/runtime/State;

    .line 308
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final invoke$lambda$2(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 92
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 309
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invoke$lambda$4$lambda$3(Landroid/content/SharedPreferences;Lcom/miniaa/launcher/MainActivity;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 2

    .line 99
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "setup_complete"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    invoke-static {p2, v1}, Lcom/miniaa/launcher/MainActivity$onCreate$1$1;->invoke$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    .line 102
    invoke-static {p1}, Lcom/miniaa/launcher/MainActivity;->access$getLocationPermissionLauncher$p(Lcom/miniaa/launcher/MainActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    const/4 p1, 0x2

    .line 104
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v0, p1, p2

    .line 105
    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object p2, p1, v1

    .line 102
    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 108
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 90
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/MainActivity$onCreate$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 91
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    .line 91
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v4, "com.miniaa.launcher.MainActivity.onCreate.<anonymous>.<anonymous> (MainActivity.kt:90)"

    const v5, -0x4bb8e839

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/miniaa/launcher/MainActivity$onCreate$1$1;->this$0:Lcom/miniaa/launcher/MainActivity;

    const-string v2, "miniaa_setup"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/miniaa/launcher/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x57ccd625

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 252
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 253
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    const/4 v10, 0x0

    if-ne v2, v5, :cond_3

    .line 93
    const-string v2, "setup_complete"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v10, v3, v10}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 255
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 92
    :cond_3
    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 96
    invoke-static {v2}, Lcom/miniaa/launcher/MainActivity$onCreate$1$1;->invoke$lambda$1(Landroidx/compose/runtime/MutableState;)Z

    move-result v3

    if-nez v3, :cond_6

    const v3, -0x5e2fb088

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const v3, 0x57ccf259

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    iget-object v5, v0, Lcom/miniaa/launcher/MainActivity$onCreate$1$1;->this$0:Lcom/miniaa/launcher/MainActivity;

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 98
    iget-object v0, v0, Lcom/miniaa/launcher/MainActivity$onCreate$1$1;->this$0:Lcom/miniaa/launcher/MainActivity;

    .line 258
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_4

    .line 259
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_5

    .line 98
    :cond_4
    new-instance v5, Lcom/miniaa/launcher/MainActivity$onCreate$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v0, v2}, Lcom/miniaa/launcher/MainActivity$onCreate$1$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/SharedPreferences;Lcom/miniaa/launcher/MainActivity;Landroidx/compose/runtime/MutableState;)V

    .line 261
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 98
    :cond_5
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 97
    invoke-static {v5, v9, v4}, Lcom/miniaa/launcher/ui/setup/SetupWizardKt;->SetupWizard(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 96
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_5

    :cond_6
    const v1, -0x5e25ad38

    .line 110
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const v11, 0x671a9c9b

    .line 111
    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(viewModel)P(3,2,1)*54@2502L7,64@2877L63:ViewModel.kt#3tja67"

    invoke-static {v9, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 264
    sget-object v1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    const/4 v13, 0x6

    invoke-virtual {v1, v9, v13}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v2

    const-string v14, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    if-eqz v2, :cond_f

    .line 269
    instance-of v1, v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_7

    .line 270
    move-object v1, v2

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    goto :goto_1

    .line 272
    :cond_7
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v1, Landroidx/lifecycle/viewmodel/CreationExtras;

    :goto_1
    move-object v5, v1

    const-class v1, Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, p1

    move v7, v15

    .line 274
    invoke-static/range {v1 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 111
    move-object v8, v1

    check-cast v8, Lcom/miniaa/launcher/ui/media/MediaViewModel;

    .line 112
    iget-object v0, v0, Lcom/miniaa/launcher/MainActivity$onCreate$1$1;->this$0:Lcom/miniaa/launcher/MainActivity;

    invoke-static {v0, v8}, Lcom/miniaa/launcher/MainActivity;->access$setMediaViewModel$p(Lcom/miniaa/launcher/MainActivity;Lcom/miniaa/launcher/ui/media/MediaViewModel;)V

    .line 113
    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 275
    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0, v9, v13}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 280
    instance-of v0, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_8

    .line 281
    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    goto :goto_2

    .line 283
    :cond_8
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    :goto_2
    move-object v4, v0

    const-class v0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v5, p1

    move v6, v15

    .line 285
    invoke-static/range {v0 .. v7}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 113
    move-object/from16 v16, v0

    check-cast v16, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;

    .line 114
    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 286
    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0, v9, v13}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 291
    instance-of v0, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_9

    .line 292
    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    goto :goto_3

    .line 294
    :cond_9
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    :goto_3
    move-object v4, v0

    const-class v0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v5, p1

    move v6, v15

    .line 296
    invoke-static/range {v0 .. v7}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 114
    move-object/from16 v17, v0

    check-cast v17, Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    .line 115
    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 297
    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0, v9, v13}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 302
    instance-of v0, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_a

    .line 303
    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    goto :goto_4

    .line 305
    :cond_a
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    :goto_4
    move-object v4, v0

    const-class v0, Lcom/miniaa/launcher/ui/settings/SettingsViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v5, p1

    move v6, v15

    .line 307
    invoke-static/range {v0 .. v7}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 115
    move-object v3, v0

    check-cast v3, Lcom/miniaa/launcher/ui/settings/SettingsViewModel;

    .line 121
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget v0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->$stable:I

    or-int/lit16 v0, v0, 0x6000

    sget v1, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;->$stable:I

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    sget v1, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->$stable:I

    shl-int/2addr v1, v13

    or-int/2addr v0, v1

    sget v1, Lcom/miniaa/launcher/ui/settings/SettingsViewModel;->$stable:I

    shl-int/lit8 v1, v1, 0x9

    or-int v6, v0, v1

    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    .line 116
    invoke-static/range {v0 .. v7}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->HomeScreen(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lcom/miniaa/launcher/ui/weather/WeatherViewModel;Lcom/miniaa/launcher/ui/apps/AppsViewModel;Lcom/miniaa/launcher/ui/settings/SettingsViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 110
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    :goto_6
    return-void

    .line 297
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
