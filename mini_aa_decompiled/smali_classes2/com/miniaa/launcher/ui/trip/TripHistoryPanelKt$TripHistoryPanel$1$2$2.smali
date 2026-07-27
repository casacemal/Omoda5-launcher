.class final Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;
.super Ljava/lang/Object;
.source "TripHistoryPanel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->TripHistoryPanel(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/animation/AnimatedVisibilityScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTripHistoryPanel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TripHistoryPanel.kt\ncom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n+ 6 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 8 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt\n*L\n1#1,587:1\n86#2:588\n82#2,7:589\n89#2:624\n93#2:649\n79#3,6:596\n86#3,4:611\n90#3,2:621\n94#3:648\n368#4,9:602\n377#4:623\n378#4,2:646\n4034#5,6:615\n149#6:625\n149#6:626\n149#6:633\n149#6:634\n149#6:641\n149#6:642\n149#6:643\n149#6:644\n159#6:645\n1225#7,6:627\n1225#7,6:635\n143#8,12:650\n*S KotlinDebug\n*F\n+ 1 TripHistoryPanel.kt\ncom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2\n*L\n218#1:588\n218#1:589,7\n218#1:624\n218#1:649\n218#1:596,6\n218#1:611,4\n218#1:621,2\n218#1:648\n218#1:602,9\n218#1:623\n218#1:646,2\n218#1:615,6\n226#1:625\n233#1:626\n246#1:633\n247#1:634\n268#1:641\n274#1:642\n277#1:643\n283#1:644\n284#1:645\n238#1:627,6\n248#1:635,6\n249#1:650,12\n*E\n"
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
.field final synthetic $allTrips$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $days:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/ui/trip/DayItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $distUnit:Ljava/lang/String;

.field final synthetic $distVal:D

.field final synthetic $maxDailyKm:D

.field final synthetic $monthName:Ljava/lang/String;

.field final synthetic $monthTripCount:I

.field final synthetic $selectedDay$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectedMonthYear:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$WTOjKUqJg_y7a2k5aLJRhLsQDy4(Ljava/util/List;DLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->invoke$lambda$5$lambda$4$lambda$3(Ljava/util/List;DLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/State;DIDLjava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/ui/trip/DayItem;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/trip/TripSummary;",
            ">;>;DID",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$selectedMonthYear:Ljava/lang/String;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$days:Ljava/util/List;

    iput-object p3, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$allTrips$delegate:Landroidx/compose/runtime/State;

    iput-wide p4, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$maxDailyKm:D

    iput p6, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$monthTripCount:I

    iput-wide p7, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$distVal:D

    iput-object p9, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$distUnit:Ljava/lang/String;

    iput-object p10, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$monthName:Ljava/lang/String;

    iput-object p11, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$selectedDay$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$5$lambda$4$lambda$3(Ljava/util/List;DLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;
    .locals 9

    const-string v0, "$this$LazyRow"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    sget-object v0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$1;->INSTANCE:Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 656
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 655
    new-instance v2, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$3;

    invoke-direct {v2, v0, p0}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 659
    new-instance v0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$4;

    move-object v3, v0

    move-object v4, p0

    move-wide v5, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$4;-><init>(Ljava/util/List;DLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V

    const p0, -0x25b7f321

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x0

    .line 655
    invoke-interface {p5, v1, p1, v2, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 265
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 217
    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->invoke(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    const-string v1, "$this$AnimatedVisibility"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.miniaa.launcher.ui.trip.TripHistoryPanel.<anonymous>.<anonymous>.<anonymous> (TripHistoryPanel.kt:217)"

    const v3, -0x44f6a799

    move/from16 v4, p3

    .line 218
    invoke-static {v3, v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget-object v13, v0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$selectedMonthYear:Ljava/lang/String;

    iget-object v14, v0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$days:Ljava/util/List;

    iget-object v12, v0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$allTrips$delegate:Landroidx/compose/runtime/State;

    iget-wide v9, v0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$maxDailyKm:D

    iget v11, v0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$monthTripCount:I

    iget-wide v1, v0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$distVal:D

    iget-object v6, v0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$distUnit:Ljava/lang/String;

    iget-object v3, v0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$monthName:Ljava/lang/String;

    iget-object v0, v0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$selectedDay$delegate:Landroidx/compose/runtime/MutableState;

    const v4, -0x1cd0f17e

    const-string v5, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo"

    .line 588
    invoke-static {v15, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 589
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 590
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v5

    .line 591
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v7

    const/4 v8, 0x0

    .line 594
    invoke-static {v5, v7, v15, v8}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    const v7, -0x4ee9b9da

    move-object/from16 v16, v0

    .line 595
    const-string v0, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    .line 596
    invoke-static {v15, v7, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 597
    invoke-static {v15, v8}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    .line 598
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v7

    .line 599
    invoke-static {v15, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 601
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v8

    move-wide/from16 v17, v1

    const v1, -0x2942ffcf

    .line 600
    const-string v2, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    .line 602
    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 603
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 604
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 605
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 608
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 610
    :goto_0
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .line 611
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 612
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 614
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .line 616
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 617
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 618
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 621
    :cond_4
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v1, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x16ef5699

    .line 623
    const-string v1, "C88@4444L9:Column.kt#2w3rfo"

    .line 624
    invoke-static {v15, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .line 222
    invoke-static {}, Lcom/miniaa/launcher/ui/theme/TypeKt;->getGoogleSansFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v8

    const/4 v0, 0x0

    const/16 v1, 0x14

    .line 223
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    .line 224
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .line 225
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v1

    move-object/from16 v27, v3

    move-wide/from16 v25, v17

    move-wide v2, v1

    .line 226
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v17, v1

    check-cast v17, Landroidx/compose/ui/Modifier;

    const/16 v1, 0x18

    int-to-float v1, v1

    .line 625
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v18

    const/16 v0, 0x1e

    int-to-float v0, v0

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v19

    const/16 v22, 0xc

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 226
    invoke-static/range {v17 .. v23}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move/from16 v28, v1

    move-object v1, v0

    const/16 v23, 0x0

    const v24, 0x1ff90

    .line 220
    const-string v0, "Trip History"

    move-object/from16 v29, v16

    const/16 v16, 0x0

    move-object/from16 v30, v6

    move-object/from16 v6, v16

    const-wide/16 v16, 0x0

    move-wide/from16 v31, v9

    move-wide/from16 v9, v16

    const/16 v16, 0x0

    move/from16 v33, v11

    move-object/from16 v11, v16

    move-object/from16 v34, v12

    move-object/from16 v12, v16

    const-wide/16 v16, 0x0

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    move-wide/from16 v13, v16

    const/16 v16, 0x0

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v22, 0x30db6

    move-object/from16 v21, p2

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 229
    invoke-static/range {v35 .. v35}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Lcom/miniaa/launcher/ui/theme/TypeKt;->getGoogleSansFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v8

    const/16 v0, 0xd

    .line 231
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    .line 232
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v9

    const/16 v15, 0xe

    const/16 v16, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    .line 233
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v9, v0

    check-cast v9, Landroidx/compose/ui/Modifier;

    .line 626
    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    const/16 v0, 0x8

    int-to-float v0, v0

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v13

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v11, 0x0

    .line 233
    invoke-static/range {v9 .. v15}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v24, 0x1ffb0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v22, 0xdb0

    move/from16 v37, v0

    move-object/from16 v0, v35

    .line 228
    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v0, 0x3

    move-object/from16 v15, p2

    const/4 v1, 0x0

    .line 237
    invoke-static {v1, v1, v15, v1, v0}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v6

    .line 238
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const v1, -0x654acc0f

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 627
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v13, 0x0

    if-nez v1, :cond_5

    .line 628
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_6

    .line 238
    :cond_5
    new-instance v1, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$1$1$1;

    invoke-direct {v1, v6, v13}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$1$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 630
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 238
    :cond_6
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v14, 0x6

    invoke-static {v0, v2, v15, v14}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 244
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 245
    invoke-static {v0, v12, v11, v13}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 633
    invoke-static/range {v37 .. v37}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    const/4 v10, 0x2

    .line 246
    invoke-static {v0, v1, v12, v10, v13}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 247
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 634
    invoke-static/range {v37 .. v37}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 247
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    const v0, -0x654a973b

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move-object/from16 v1, v36

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v5, v34

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    move-wide/from16 v2, v31

    invoke-interface {v15, v2, v3}, Landroidx/compose/runtime/Composer;->changed(D)Z

    move-result v4

    or-int/2addr v0, v4

    .line 635
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_7

    .line 636
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_8

    .line 248
    :cond_7
    new-instance v9, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$$ExternalSyntheticLambda0;

    move-object v0, v9

    move-object/from16 v4, v29

    invoke-direct/range {v0 .. v5}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;DLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V

    .line 638
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v9

    .line 248
    :cond_8
    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v16, 0x6006

    const/16 v17, 0xec

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v7

    move-object v1, v6

    move-object v4, v8

    move-object/from16 v6, v18

    move/from16 v7, v19

    move-object v8, v9

    move-object/from16 v9, p2

    move/from16 v10, v16

    move v12, v11

    move/from16 v11, v17

    .line 242
    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 268
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 641
    invoke-static/range {v37 .. v37}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 268
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v15, v14}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 270
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.1f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, v33

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " trips  \u00b7  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " this "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {}, Lcom/miniaa/launcher/ui/theme/TypeKt;->getGoogleSansFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v8

    const/16 v11, 0xc

    .line 272
    invoke-static {v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    .line 273
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v16

    const/16 v22, 0xe

    const/16 v23, 0x0

    const v18, 0x3ecccccd    # 0.4f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    .line 274
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 642
    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 274
    invoke-static {v1, v6, v10, v9, v13}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/16 v23, 0x0

    const v24, 0x1ffb0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    move/from16 v18, v10

    move-wide/from16 v9, v16

    const/16 v16, 0x0

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-wide/16 v16, 0x0

    move-wide/from16 v13, v16

    const/16 v16, 0x0

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0xdb0

    move-object/from16 v21, p2

    .line 269
    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 277
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0xc

    int-to-float v1, v1

    .line 643
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 277
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v1, p2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 281
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 282
    invoke-static {v0, v4, v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 644
    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    const/4 v6, 0x2

    .line 283
    invoke-static {v0, v3, v4, v6, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    double-to-float v3, v3

    .line 645
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 284
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 285
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v5

    const/16 v11, 0xe

    const/4 v12, 0x0

    const v7, 0x3dcccccd    # 0.1f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v5

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 280
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 624
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 646
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 602
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 596
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 588
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 649
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    return-void
.end method
