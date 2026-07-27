.class final Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;
.super Ljava/lang/Object;
.source "TabRow.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MultiContentMeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,1355:1\n256#2,3:1356\n33#2,4:1359\n259#2,2:1363\n38#2:1365\n261#2:1366\n151#2,3:1367\n33#2,4:1370\n154#2,2:1374\n38#2:1376\n156#2:1377\n151#2,3:1382\n33#2,4:1385\n154#2,2:1389\n38#2:1391\n156#2:1392\n151#2,3:1393\n33#2,4:1396\n154#2,2:1400\n38#2:1402\n156#2:1403\n86#3:1378\n56#3:1379\n50#3:1381\n148#4:1380\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1\n*L\n764#1:1356,3\n764#1:1359,4\n764#1:1363,2\n764#1:1365\n764#1:1366\n776#1:1367,3\n776#1:1370,4\n776#1:1374,2\n776#1:1376\n776#1:1377\n793#1:1382,3\n793#1:1385,4\n793#1:1389,2\n793#1:1391\n793#1:1392\n804#1:1393,3\n804#1:1396,4\n804#1:1400,2\n804#1:1402\n804#1:1403\n784#1:1378\n784#1:1379\n787#1:1381\n784#1:1380\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "<name for destructuring parameter 0>",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $edgePadding:F

.field final synthetic $scope:Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$scope$1$1;

.field final synthetic $scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

.field final synthetic $selectedTabIndex:I


# direct methods
.method constructor <init>(FLandroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$scope$1$1;ILandroidx/compose/material3/ScrollableTabData;)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$edgePadding:F

    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$scope:Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$scope$1$1;

    iput p3, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$selectedTabIndex:I

    iput-object p4, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;>;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 759
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 760
    iget v6, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$edgePadding:F

    invoke-interface {v12, v6}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v8

    .line 761
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 762
    invoke-static {}, Landroidx/compose/material3/TabRowKt;->access$getScrollableTabRowMinimumTabWidth$p()F

    move-result v7

    invoke-interface {v12, v7}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v15

    .line 764
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1360
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    move v10, v2

    :goto_0
    if-ge v10, v9, :cond_0

    .line 1361
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1363
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    const v13, 0x7fffffff

    .line 765
    invoke-interface {v11, v13}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 764
    :cond_0
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v22

    mul-int/lit8 v7, v8, 0x2

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v16, 0x0

    move-wide/from16 v13, p3

    move/from16 v17, v22

    move/from16 v18, v22

    .line 769
    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v9

    .line 775
    new-instance v11, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget v13, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$edgePadding:F

    iput v13, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1368
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 1371
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    move v15, v2

    :goto_1
    if-ge v15, v14, :cond_1

    .line 1372
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1374
    move-object v2, v13

    check-cast v2, Ljava/util/Collection;

    move-object/from16 v5, v16

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 776
    invoke-interface {v5, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    .line 1374
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x2

    goto :goto_1

    .line 1377
    :cond_1
    move-object v3, v13

    check-cast v3, Ljava/util/List;

    .line 779
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v13, v7

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_2

    .line 781
    invoke-static {}, Landroidx/compose/material3/TabRowKt;->access$getScrollableTabRowMinimumTabWidth$p()F

    move-result v7

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v9

    invoke-interface {v12, v9}, Landroidx/compose/ui/layout/MeasureScope;->toDp-u2uoSUM(I)F

    move-result v9

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/comparisons/ComparisonsKt;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v7}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v7

    .line 782
    invoke-interface {v12, v7}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v9

    add-int/2addr v13, v9

    .line 784
    invoke-static {}, Landroidx/compose/material3/TabKt;->getHorizontalTextPadding()F

    move-result v9

    const/4 v10, 0x2

    int-to-float v14, v10

    mul-float/2addr v9, v14

    .line 1378
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    sub-float v9, v7, v9

    .line 1379
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v9

    const/16 v14, 0x18

    int-to-float v14, v14

    .line 1380
    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v14

    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v14

    .line 784
    invoke-static {v9, v14}, Lkotlin/comparisons/ComparisonsKt;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v9}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v9

    .line 786
    new-instance v14, Landroidx/compose/material3/TabPosition;

    iget v15, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/4 v10, 0x0

    invoke-direct {v14, v15, v7, v9, v10}, Landroidx/compose/material3/TabPosition;-><init>(FFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 787
    iget v9, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    add-float/2addr v9, v7

    .line 1381
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 787
    iput v7, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 779
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object v9, v2

    check-cast v9, Ljava/util/List;

    .line 790
    iget-object v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$scope:Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$scope$1$1;

    invoke-virtual {v2, v9}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$scope$1$1;->setTabPositions(Ljava/util/List;)V

    .line 1383
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1386
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_3

    .line 1387
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1389
    move-object v10, v2

    check-cast v10, Ljava/util/Collection;

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    const/16 v29, 0x8

    const/16 v30, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-wide/from16 v23, p3

    move/from16 v25, v13

    move/from16 v26, v13

    .line 795
    invoke-static/range {v23 .. v30}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v14

    .line 794
    invoke-interface {v7, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    .line 1389
    invoke-interface {v10, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1392
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/util/List;

    .line 804
    iget v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$selectedTabIndex:I

    .line 1394
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1397
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_4

    .line 1398
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1400
    move-object v14, v5

    check-cast v14, Ljava/util/Collection;

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 808
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/material3/TabPosition;

    invoke-virtual {v15}, Landroidx/compose/material3/TabPosition;->getWidth-D9Ej5fM()F

    move-result v15

    invoke-interface {v12, v15}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v19

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-wide/from16 v16, p3

    move/from16 v21, v22

    move-object/from16 p2, v1

    move v15, v2

    .line 806
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA(JIIII)J

    move-result-wide v1

    .line 805
    invoke-interface {v10, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    .line 1400
    invoke-interface {v14, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p2

    move v2, v15

    goto :goto_4

    .line 1403
    :cond_4
    check-cast v5, Ljava/util/List;

    .line 815
    new-instance v14, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;

    iget v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$edgePadding:F

    iget-object v6, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    iget v10, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->$selectedTabIndex:I

    move-object v0, v14

    move-object v1, v11

    move-object/from16 v7, p1

    move/from16 v11, v22

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;FLjava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/compose/material3/ScrollableTabData;Landroidx/compose/ui/layout/MeasureScope;ILjava/util/List;II)V

    move-object v4, v14

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move/from16 v2, v22

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
