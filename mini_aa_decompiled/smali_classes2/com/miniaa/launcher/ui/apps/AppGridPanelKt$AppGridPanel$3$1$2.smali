.class final Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;
.super Ljava/lang/Object;
.source "AppGridPanel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/apps/AppGridPanelKt;->AppGridPanel(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IILandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/pager/PagerScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppGridPanel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppGridPanel.kt\ncom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n+ 8 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 9 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,270:1\n1#2:271\n149#3:272\n86#4:273\n84#4,5:274\n89#4:307\n93#4:368\n79#5,6:279\n86#5,4:294\n90#5,2:304\n79#5,6:314\n86#5,4:329\n90#5,2:339\n94#5:363\n94#5:367\n368#6,9:285\n377#6:306\n368#6,9:320\n377#6:341\n378#6,2:361\n378#6,2:365\n4034#7,6:298\n4034#7,6:333\n99#8:308\n97#8,5:309\n102#8:342\n106#8:364\n1225#9,6:343\n1225#9,6:349\n1225#9,6:355\n*S KotlinDebug\n*F\n+ 1 AppGridPanel.kt\ncom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2\n*L\n128#1:272\n125#1:273\n125#1:274,5\n125#1:307\n125#1:368\n125#1:279,6\n125#1:294,4\n125#1:304,2\n132#1:314,6\n132#1:329,4\n132#1:339,2\n132#1:363\n125#1:367\n125#1:285,9\n125#1:306\n132#1:320,9\n132#1:341\n132#1:361,2\n125#1:365,2\n125#1:298,6\n132#1:333,6\n132#1:308\n132#1:309,5\n132#1:342\n132#1:364\n145#1:343,6\n153#1:349,6\n160#1:355,6\n*E\n"
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
.field final synthetic $columns:I

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $onAppClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSettingsClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onTripHistoryClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $rows:I


# direct methods
.method public static synthetic $r8$lambda$QgqUTo8ULW6bplpfq-kmr6Kcwfk(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->invoke$lambda$9$lambda$8$lambda$4$lambda$3(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WZUTUHDTOfY9aKDG3kZZ0nYo2qU(Landroid/content/Context;Lcom/miniaa/launcher/data/apps/AppModel;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->invoke$lambda$9$lambda$8$lambda$7$lambda$6(Landroid/content/Context;Lcom/miniaa/launcher/data/apps/AppModel;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kldVhJ1UwjOvBuZiHm8EuEmjykI(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->invoke$lambda$9$lambda$8$lambda$2$lambda$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/util/List;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;>;II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$pages:Ljava/util/List;

    iput p2, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$rows:I

    iput p3, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$columns:I

    iput-object p4, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$onSettingsClick:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$onTripHistoryClick:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$onAppClick:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$9$lambda$8$lambda$2$lambda$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 145
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$9$lambda$8$lambda$4$lambda$3(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 153
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$9$lambda$8$lambda$7$lambda$6(Landroid/content/Context;Lcom/miniaa/launcher/data/apps/AppModel;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 2

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/apps/AppModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x10000000

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 165
    :cond_1
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/apps/AppModel;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p1, Landroidx/compose/foundation/pager/PagerScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->invoke(Landroidx/compose/foundation/pager/PagerScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/pager/PagerScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v9, p3

    const-string v2, "$this$HorizontalPager"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string v3, "com.miniaa.launcher.ui.apps.AppGridPanel.<anonymous>.<anonymous>.<anonymous> (AppGridPanel.kt:121)"

    const v4, -0x6e84f998

    move/from16 v5, p4

    .line 122
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget-object v2, v0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$pages:Ljava/util/List;

    if-ltz v1, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    move-object v10, v1

    check-cast v10, Ljava/util/List;

    .line 126
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 127
    invoke-static {v1, v11, v12, v13}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/16 v2, 0xc

    int-to-float v2, v2

    .line 272
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    const/4 v3, 0x2

    .line 128
    invoke-static {v1, v2, v11, v3, v13}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 129
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceEvenly()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 125
    iget v14, v0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$rows:I

    iget v15, v0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$columns:I

    iget-object v8, v0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$onSettingsClick:Lkotlin/jvm/functions/Function0;

    iget-object v7, v0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$onTripHistoryClick:Lkotlin/jvm/functions/Function0;

    iget-object v6, v0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$context:Landroid/content/Context;

    iget-object v5, v0, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2;->$onAppClick:Lkotlin/jvm/functions/Function1;

    const v0, -0x1cd0f17e

    const-string v3, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo"

    .line 273
    invoke-static {v9, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 274
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    const/4 v4, 0x6

    .line 277
    invoke-static {v2, v0, v9, v4}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    const v3, -0x4ee9b9da

    .line 279
    const-string v2, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    invoke-static {v9, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    move-object/from16 p1, v7

    const/4 v7, 0x0

    .line 280
    invoke-static {v9, v7}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v16

    .line 281
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v7

    .line 282
    invoke-static {v9, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 284
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v3

    const v4, -0x2942ffcf

    .line 285
    const-string v11, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v9, v4, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 286
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 287
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 288
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 289
    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 291
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 293
    :goto_1
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .line 294
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 295
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v3, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 297
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 299
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 300
    :cond_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 301
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 304
    :cond_5
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v3, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x16ef5699

    .line 306
    const-string v1, "C88@4444L9:Column.kt#2w3rfo"

    .line 307
    invoke-static {v9, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    const v0, -0x43c82836

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v14, :cond_14

    .line 133
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v4, 0x0

    invoke-static {v0, v4, v12, v13}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 134
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceEvenly()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    const v3, 0x2952b718

    .line 132
    const-string v4, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo"

    .line 308
    invoke-static {v9, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 309
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v3

    const/4 v4, 0x6

    .line 312
    invoke-static {v1, v3, v9, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    const v3, -0x4ee9b9da

    .line 314
    invoke-static {v9, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v12, 0x0

    .line 315
    invoke-static {v9, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v16

    .line 316
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 317
    invoke-static {v9, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 319
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v4

    const v12, -0x2942ffcf

    .line 320
    invoke-static {v9, v12, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 321
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v12

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-nez v12, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 322
    :cond_6
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 323
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 324
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 326
    :cond_7
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 328
    :goto_3
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .line 329
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v4, v1, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 330
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 332
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .line 334
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 335
    :cond_8
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 336
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 339
    :cond_9
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x184f2606

    .line 341
    const-string v1, "C101@5126L9:Row.kt#2w3rfo"

    .line 342
    invoke-static {v9, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    move-object v12, v0

    check-cast v12, Landroidx/compose/foundation/layout/RowScope;

    const v0, -0x5233e25

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v15, :cond_13

    mul-int v0, v7, v15

    add-int/2addr v0, v4

    .line 138
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    const v1, 0x60bda9f3

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 139
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniaa/launcher/data/apps/AppModel;

    .line 140
    invoke-virtual {v0}, Lcom/miniaa/launcher/data/apps/AppModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "__settings__"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v0, 0x60bf0b8b    # 1.1013E20f

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const v0, -0x522fd8d

    .line 144
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 343
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_a

    .line 344
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_b

    .line 145
    :cond_a
    new-instance v1, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v8}, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 346
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 145
    :cond_b
    move-object/from16 v16, v1

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 146
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v21, v0

    check-cast v21, Landroidx/compose/ui/Modifier;

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    move-object/from16 v20, v12

    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v20

    const/16 v21, 0x1b6

    const/16 v22, 0x8

    .line 141
    const-string v0, "Settings"

    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object/from16 v26, v2

    move v2, v3

    const v27, -0x4ee9b9da

    move/from16 v3, v23

    move/from16 v17, v4

    const v18, -0x2942ffcf

    const/16 v28, 0x0

    const/16 v29, 0x6

    move-object/from16 v4, v16

    move-object v13, v5

    move-object/from16 v5, v20

    move-object/from16 v30, v6

    move-object/from16 v6, p3

    move-object/from16 v31, p1

    move/from16 v16, v7

    move/from16 v7, v21

    move-object/from16 v19, v8

    move/from16 v8, v22

    invoke-static/range {v0 .. v8}, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt;->access$AppGridItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 140
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_5

    :cond_c
    move-object/from16 v31, p1

    move-object/from16 v26, v2

    move/from16 v17, v4

    move-object v13, v5

    move-object/from16 v30, v6

    move/from16 v16, v7

    move-object/from16 v19, v8

    const v18, -0x2942ffcf

    const v27, -0x4ee9b9da

    const/16 v28, 0x0

    const/16 v29, 0x6

    .line 148
    invoke-virtual {v0}, Lcom/miniaa/launcher/data/apps/AppModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__trip_history__"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const v0, 0x60c6f1cf

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const v0, -0x522bd2a

    .line 152
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move-object/from16 v8, v31

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 349
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_d

    .line 350
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_e

    .line 153
    :cond_d
    new-instance v1, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8}, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 352
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 153
    :cond_e
    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 154
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v21, v0

    check-cast v21, Landroidx/compose/ui/Modifier;

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    move-object/from16 v20, v12

    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/16 v7, 0xc36

    const/16 v20, 0x4

    .line 149
    const-string v0, "Trips"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v6, p3

    move-object/from16 v31, v8

    move/from16 v8, v20

    invoke-static/range {v0 .. v8}, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt;->access$AppGridItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 148
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_5

    :cond_f
    const v1, 0x60ce4e45

    .line 156
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 158
    invoke-virtual {v0}, Lcom/miniaa/launcher/data/apps/AppModel;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v0}, Lcom/miniaa/launcher/data/apps/AppModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0x52288f1

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move-object/from16 v8, v30

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 355
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_10

    .line 356
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_11

    .line 160
    :cond_10
    new-instance v4, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2$$ExternalSyntheticLambda2;

    invoke-direct {v4, v8, v0, v13}, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt$AppGridPanel$3$1$2$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Lcom/miniaa/launcher/data/apps/AppModel;Lkotlin/jvm/functions/Function1;)V

    .line 358
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 160
    :cond_11
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 167
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v21, v0

    check-cast v21, Landroidx/compose/ui/Modifier;

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    move-object/from16 v20, v12

    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v20, 0xc

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move v3, v6

    move-object/from16 v6, p3

    move-object/from16 v30, v8

    move/from16 v8, v20

    .line 157
    invoke-static/range {v0 .. v8}, Lcom/miniaa/launcher/ui/apps/AppGridPanelKt;->access$AppGridItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 156
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 138
    :goto_5
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v1, 0x0

    goto :goto_6

    :cond_12
    move-object/from16 v31, p1

    move-object/from16 v26, v2

    move/from16 v17, v4

    move-object v13, v5

    move-object/from16 v30, v6

    move/from16 v16, v7

    move-object/from16 v19, v8

    const v18, -0x2942ffcf

    const v27, -0x4ee9b9da

    const/16 v28, 0x0

    const/16 v29, 0x6

    const v0, 0x60db2616

    .line 170
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 171
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v21, v0

    check-cast v21, Landroidx/compose/ui/Modifier;

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    move-object/from16 v20, v12

    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 170
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_6
    add-int/lit8 v4, v17, 0x1

    move-object v5, v13

    move/from16 v7, v16

    move-object/from16 v8, v19

    move-object/from16 v2, v26

    move-object/from16 v6, v30

    move-object/from16 p1, v31

    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_13
    move-object/from16 v31, p1

    move-object/from16 v26, v2

    move-object v13, v5

    move-object/from16 v30, v6

    move/from16 v16, v7

    move-object/from16 v19, v8

    const/4 v1, 0x0

    const v18, -0x2942ffcf

    const v27, -0x4ee9b9da

    const/16 v28, 0x0

    const/16 v29, 0x6

    .line 136
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 342
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 361
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 320
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 314
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 308
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    add-int/lit8 v7, v16, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_2

    .line 131
    :cond_14
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 307
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 365
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 285
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 279
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 273
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 368
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_15
    return-void
.end method
