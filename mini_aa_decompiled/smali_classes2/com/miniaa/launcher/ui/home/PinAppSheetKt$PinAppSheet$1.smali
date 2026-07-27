.class final Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;
.super Ljava/lang/Object;
.source "PinAppSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/home/PinAppSheetKt;->PinAppSheet(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPinAppSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PinAppSheet.kt\ncom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt\n*L\n1#1,107:1\n149#2:108\n149#2:109\n149#2:110\n1225#3,6:111\n143#4,12:117\n*S KotlinDebug\n*F\n+ 1 PinAppSheet.kt\ncom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1\n*L\n55#1:108\n59#1:109\n60#1:110\n61#1:111,6\n62#1:117,12\n*E\n"
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
.field final synthetic $apps$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $appsViewModel:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

.field final synthetic $pinned$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$HnxEBKMOlrL8TqtTAUa9sAGm6es(Lcom/miniaa/launcher/data/apps/AppModel;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->invoke$lambda$5$lambda$4$lambda$0(Lcom/miniaa/launcher/data/apps/AppModel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_ecSqpAzitnOxzCX2b8d7GaQ7tE(Landroidx/compose/runtime/State;Lcom/miniaa/launcher/ui/apps/AppsViewModel;Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->invoke$lambda$5$lambda$4(Landroidx/compose/runtime/State;Lcom/miniaa/launcher/ui/apps/AppsViewModel;Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/miniaa/launcher/ui/apps/AppsViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/miniaa/launcher/ui/apps/AppsViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->$apps$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->$pinned$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->$appsViewModel:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$5$lambda$4(Landroidx/compose/runtime/State;Lcom/miniaa/launcher/ui/apps/AppsViewModel;Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;
    .locals 4

    const-string v0, "$this$LazyColumn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p0}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt;->access$PinAppSheet$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$$ExternalSyntheticLambda1;-><init>()V

    .line 120
    sget-object v1, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$invoke$lambda$5$lambda$4$$inlined$items$default$1;->INSTANCE:Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$invoke$lambda$5$lambda$4$$inlined$items$default$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 123
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 122
    new-instance v3, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$invoke$lambda$5$lambda$4$$inlined$items$default$2;

    invoke-direct {v3, v0, p0}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$invoke$lambda$5$lambda$4$$inlined$items$default$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$invoke$lambda$5$lambda$4$$inlined$items$default$3;

    invoke-direct {v0, v1, p0}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$invoke$lambda$5$lambda$4$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 126
    new-instance v1, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$invoke$lambda$5$lambda$4$$inlined$items$default$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$invoke$lambda$5$lambda$4$$inlined$items$default$4;-><init>(Ljava/util/List;Lcom/miniaa/launcher/ui/apps/AppsViewModel;Landroidx/compose/runtime/State;)V

    const p0, -0x25b7f321

    const/4 p1, 0x1

    invoke-static {p0, p1, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function4;

    .line 122
    invoke-interface {p3, v2, v3, v0, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 104
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$5$lambda$4$lambda$0(Lcom/miniaa/launcher/data/apps/AppModel;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/miniaa/launcher/data/apps/AppModel;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move/from16 v1, p3

    const-string v2, "$this$ModalBottomSheet"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v15, 0x10

    if-ne v2, v15, :cond_1

    .line 51
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 51
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.miniaa.launcher.ui.home.PinAppSheet.<anonymous> (PinAppSheet.kt:50)"

    const v4, -0x5da1b380

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 53
    :cond_2
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v14, v2}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/Typography;->getHeadlineMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    .line 54
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v14, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getOnSurface-0d7_KjU()J

    move-result-wide v3

    .line 55
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x18

    int-to-float v2, v2

    .line 108
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    const/16 v5, 0x8

    int-to-float v13, v5

    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 55
    invoke-static {v1, v2, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v24, 0x0

    const v25, 0xfff8

    .line 51
    const-string v1, "Pin to sidebar"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v26, v13

    move-object/from16 v13, v16

    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x36

    move-object/from16 v22, p2

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/16 v1, 0x10

    int-to-float v1, v1

    .line 109
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    invoke-static/range {v26 .. v26}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 59
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA(FF)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v2

    .line 60
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v3, 0x2

    int-to-float v3, v3

    .line 110
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 60
    invoke-virtual {v1, v3}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    const v1, 0xdc184a9

    move-object/from16 v9, p2

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v1, v0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->$apps$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, v0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->$pinned$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    iget-object v3, v0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->$appsViewModel:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 61
    iget-object v3, v0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->$apps$delegate:Landroidx/compose/runtime/State;

    iget-object v5, v0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->$appsViewModel:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    iget-object v0, v0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->$pinned$delegate:Landroidx/compose/runtime/State;

    .line 111
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_3

    .line 112
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v6, v1, :cond_4

    .line 61
    :cond_3
    new-instance v6, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3, v5, v0}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/State;Lcom/miniaa/launcher/ui/apps/AppsViewModel;Landroidx/compose/runtime/State;)V

    .line 114
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 61
    :cond_4
    move-object v8, v6

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v10, 0x6180

    const/16 v11, 0xeb

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v9, p2

    .line 58
    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_1
    return-void
.end method
