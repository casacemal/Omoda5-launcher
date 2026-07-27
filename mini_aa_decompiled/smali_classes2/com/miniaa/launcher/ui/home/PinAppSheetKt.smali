.class public final Lcom/miniaa/launcher/ui/home/PinAppSheetKt;
.super Ljava/lang/Object;
.source "PinAppSheet.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPinAppSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PinAppSheet.kt\ncom/miniaa/launcher/ui/home/PinAppSheetKt\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,107:1\n81#2:108\n81#2:109\n*S KotlinDebug\n*F\n+ 1 PinAppSheet.kt\ncom/miniaa/launcher/ui/home/PinAppSheetKt\n*L\n42#1:108\n43#1:109\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b2\u0006\u0010\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u008a\u0084\u0002"
    }
    d2 = {
        "PinAppSheet",
        "",
        "appsViewModel",
        "Lcom/miniaa/launcher/ui/apps/AppsViewModel;",
        "onDismiss",
        "Lkotlin/Function0;",
        "(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "app_systemRelease",
        "apps",
        "",
        "Lcom/miniaa/launcher/data/apps/AppModel;",
        "pinned",
        "",
        ""
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$dgpHues5Bu69J3iuwzDokS0bcBM(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt;->PinAppSheet$lambda$2(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final PinAppSheet(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miniaa/launcher/ui/apps/AppsViewModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v15, p3

    const-string v2, "appsViewModel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onDismiss"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x5db7f883

    move-object/from16 v3, p2

    .line 41
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    and-int/lit8 v3, v15, 0x6

    const/4 v4, 0x2

    if-nez v3, :cond_1

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_1
    move v3, v15

    :goto_1
    and-int/lit8 v5, v15, 0x30

    if-nez v5, :cond_3

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_3
    move v5, v3

    and-int/lit8 v3, v5, 0x13

    const/16 v6, 0x12

    if-ne v3, v6, :cond_5

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 106
    :cond_4
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v21, v14

    goto :goto_4

    .line 41
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, -0x1

    const-string v6, "com.miniaa.launcher.ui.home.PinAppSheet (PinAppSheet.kt:40)"

    invoke-static {v2, v5, v3, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 42
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->getMediaNavApps()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static {v2, v3, v14, v6, v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->getPinnedPackages()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    invoke-static {v7, v3, v14, v6, v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v9

    const/4 v6, 0x6

    .line 44
    invoke-static {v8, v3, v14, v6, v4}, Landroidx/compose/material3/ModalBottomSheetKt;->rememberModalBottomSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object v3

    .line 49
    sget-object v4, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v4, v14, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v6

    .line 50
    new-instance v4, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;

    invoke-direct {v4, v2, v9, v0}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/miniaa/launcher/ui/apps/AppsViewModel;)V

    const/16 v2, 0x36

    const v9, -0x5da1b380

    invoke-static {v9, v8, v4, v14, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lkotlin/jvm/functions/Function3;

    shr-int/lit8 v2, v5, 0x3

    and-int/lit8 v18, v2, 0xe

    const/16 v19, 0x180

    const/16 v20, 0xfda

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v21, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v1, p1

    move-object/from16 v17, v21

    .line 46
    invoke-static/range {v1 .. v20}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet-dYc4hso(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 106
    :cond_7
    :goto_4
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v2, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$$ExternalSyntheticLambda0;

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-direct {v2, v0, v3, v4}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$$ExternalSyntheticLambda0;-><init>(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_8
    return-void
.end method

.method private static final PinAppSheet$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final PinAppSheet$lambda$1(Landroidx/compose/runtime/State;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private static final PinAppSheet$lambda$2(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p3, p2}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt;->PinAppSheet(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$PinAppSheet$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt;->PinAppSheet$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$PinAppSheet$lambda$1(Landroidx/compose/runtime/State;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt;->PinAppSheet$lambda$1(Landroidx/compose/runtime/State;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
