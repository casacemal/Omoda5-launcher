.class final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1\n+ 2 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 6 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 7 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1646:1\n46#2,5:1647\n46#2,3:1652\n50#2:1673\n89#3:1655\n89#3:1674\n89#3:1760\n460#4,11:1656\n838#4,15:1681\n33#5,6:1667\n33#5,6:1675\n33#5,6:1696\n33#5,6:1702\n228#6,4:1708\n198#6,7:1712\n209#6,3:1720\n212#6,9:1724\n232#6:1733\n228#6,4:1734\n198#6,7:1738\n209#6,3:1746\n212#6,9:1750\n232#6:1759\n1956#7:1719\n1820#7:1723\n1956#7:1745\n1820#7:1749\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1\n*L\n589#1:1647,5\n599#1:1652,3\n599#1:1673\n603#1:1655\n634#1:1674\n725#1:1760\n604#1:1656,11\n647#1:1681,15\n615#1:1667,6\n635#1:1675,6\n681#1:1696,6\n684#1:1702,6\n699#1:1708,4\n699#1:1712,7\n699#1:1720,3\n699#1:1724,9\n699#1:1733\n713#1:1734,4\n713#1:1738,7\n713#1:1746,3\n713#1:1750,9\n713#1:1759\n699#1:1719\n699#1:1723\n713#1:1745\n713#1:1749\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "frameTime",
        "",
        "invoke"
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
.field final synthetic $alreadyComposed:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifiedValues:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifiedValuesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toComplete:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toInsert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toLateApply:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toRecompose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/collection/MutableScatterSet;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/collection/MutableScatterSet;

    iput-object p4, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iput-object p5, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Landroidx/collection/MutableScatterSet;

    iput-object p7, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iput-object p8, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Landroidx/collection/MutableScatterSet;

    iput-object p9, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValuesSet:Ljava/util/Set;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 585
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->invoke(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 26

    move-object/from16 v0, p0

    .line 588
    iget-object v1, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v1}, Landroidx/compose/runtime/Recomposer;->access$getHasBroadcastFrameClockAwaiters(Landroidx/compose/runtime/Recomposer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    const-string v1, "Recomposer:animation"

    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 1647
    sget-object v3, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 592
    :try_start_0
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->access$getBroadcastFrameClock$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;

    move-result-object v2

    move-wide/from16 v3, p1

    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/BroadcastFrameClock;->sendFrame(J)V

    .line 595
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    .line 596
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v0

    .line 599
    :cond_0
    :goto_0
    const-string v1, "Recomposer:recompose"

    iget-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/collection/MutableScatterSet;

    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/collection/MutableScatterSet;

    iget-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iget-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iget-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Landroidx/collection/MutableScatterSet;

    iget-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iget-object v15, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Landroidx/collection/MutableScatterSet;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValuesSet:Ljava/util/Set;

    .line 1652
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 602
    :try_start_1
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z

    .line 603
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v2

    .line 1655
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 604
    :try_start_2
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    .line 1657
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    if-lez v4, :cond_2

    .line 1660
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x0

    .line 1662
    :cond_1
    aget-object v7, v3, v6

    check-cast v7, Landroidx/compose/runtime/ControlledComposition;

    .line 605
    move-object v5, v11

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v4, :cond_1

    .line 607
    :cond_2
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 608
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 1655
    :try_start_3
    monitor-exit v2

    .line 611
    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 612
    invoke-virtual {v10}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 613
    :goto_1
    move-object v2, v11

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v2, v12

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_16

    .line 673
    :cond_3
    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 674
    invoke-virtual {v8}, Landroidx/compose/runtime/Recomposer;->getChangeCount()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v8, v4, v5}, Landroidx/compose/runtime/Recomposer;->access$setChangeCount$p(Landroidx/compose/runtime/Recomposer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 1697
    :try_start_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    .line 1698
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1699
    check-cast v4, Landroidx/compose/runtime/ControlledComposition;

    .line 682
    invoke-virtual {v15, v4}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1703
    :cond_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_5

    .line 1704
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1705
    check-cast v4, Landroidx/compose/runtime/ControlledComposition;

    .line 685
    invoke-interface {v4}, Landroidx/compose/runtime/ControlledComposition;->applyChanges()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 692
    :cond_5
    :try_start_5
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v3, v0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    .line 688
    :try_start_6
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    .line 689
    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 692
    :try_start_7
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 1673
    :goto_4
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    :goto_5
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    .line 692
    :goto_6
    :try_start_8
    invoke-interface {v14}, Ljava/util/List;->clear()V

    throw v0

    .line 696
    :cond_6
    :goto_7
    invoke-virtual {v13}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    const/4 v2, 0x7

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-eqz v0, :cond_c

    .line 698
    :try_start_9
    move-object v0, v13

    check-cast v0, Landroidx/collection/ScatterSet;

    invoke-virtual {v15, v0}, Landroidx/collection/MutableScatterSet;->plusAssign(Landroidx/collection/ScatterSet;)V

    .line 699
    move-object v0, v13

    check-cast v0, Landroidx/collection/ScatterSet;

    .line 1709
    iget-object v4, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1713
    iget-object v0, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1714
    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_a

    move-object v7, v4

    const/4 v6, 0x0

    .line 1717
    :goto_8
    aget-wide v3, v0, v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v23, v0

    move-object/from16 v22, v1

    not-long v0, v3

    shl-long/2addr v0, v2

    and-long/2addr v0, v3

    and-long v0, v0, v16

    cmp-long v0, v0, v16

    if-eqz v0, :cond_9

    sub-int v0, v6, v5

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_8

    const-wide/16 v20, 0xff

    and-long v24, v3, v20

    const-wide/16 v18, 0x80

    cmp-long v24, v24, v18

    if-gez v24, :cond_7

    shl-int/lit8 v24, v6, 0x3

    add-int v24, v24, v1

    .line 1711
    :try_start_a
    aget-object v24, v7, v24

    check-cast v24, Landroidx/compose/runtime/ControlledComposition;

    .line 700
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/ControlledComposition;->applyLateChanges()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_7
    :goto_a
    const/16 v2, 0x8

    shr-long/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x7

    goto :goto_9

    :cond_8
    const/16 v2, 0x8

    if-ne v0, v2, :cond_b

    :cond_9
    if-eq v6, v5, :cond_b

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v22

    move-object/from16 v0, v23

    const/4 v2, 0x7

    goto :goto_8

    :cond_a
    move-object/from16 v22, v1

    .line 707
    :cond_b
    :try_start_b
    invoke-virtual {v13}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v1, v22

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object/from16 v22, v1

    goto :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v22, v1

    :goto_b
    move-object v3, v0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    .line 703
    :try_start_c
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    .line 704
    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 707
    :try_start_d
    invoke-virtual {v13}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1673
    :goto_c
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    move-object/from16 v1, v22

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v1, v22

    goto/16 :goto_1f

    :catchall_4
    move-exception v0

    move-object/from16 v1, v22

    .line 707
    :goto_d
    :try_start_e
    invoke-virtual {v13}, Landroidx/collection/MutableScatterSet;->clear()V

    throw v0

    .line 711
    :cond_c
    :goto_e
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    if-eqz v0, :cond_12

    .line 713
    :try_start_f
    move-object v0, v15

    check-cast v0, Landroidx/collection/ScatterSet;

    .line 1735
    iget-object v2, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1739
    iget-object v0, v0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1740
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_10

    const/4 v4, 0x0

    .line 1743
    :goto_f
    aget-wide v5, v0, v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object v7, v0

    move-object/from16 v22, v1

    not-long v0, v5

    const/16 v23, 0x7

    shl-long v0, v0, v23

    and-long/2addr v0, v5

    and-long v0, v0, v16

    cmp-long v0, v0, v16

    if-eqz v0, :cond_f

    sub-int v0, v4, v3

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_e

    const-wide/16 v20, 0xff

    and-long v24, v5, v20

    const-wide/16 v18, 0x80

    cmp-long v24, v24, v18

    if-gez v24, :cond_d

    shl-int/lit8 v24, v4, 0x3

    add-int v24, v24, v1

    .line 1737
    :try_start_10
    aget-object v24, v2, v24

    check-cast v24, Landroidx/compose/runtime/ControlledComposition;

    .line 714
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/ControlledComposition;->changesApplied()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_11

    :catch_3
    move-exception v0

    goto :goto_13

    :cond_d
    :goto_11
    move-object/from16 v24, v2

    const/16 v2, 0x8

    shr-long/2addr v5, v2

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v24

    goto :goto_10

    :cond_e
    move-object/from16 v24, v2

    const/16 v2, 0x8

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_f
    move-object/from16 v24, v2

    const/16 v2, 0x8

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    :goto_12
    if-eq v4, v3, :cond_11

    add-int/lit8 v4, v4, 0x1

    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    goto :goto_f

    :cond_10
    move-object/from16 v22, v1

    .line 721
    :cond_11
    :try_start_11
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-object/from16 v1, v22

    goto :goto_15

    :catchall_5
    move-exception v0

    move-object/from16 v22, v1

    goto :goto_14

    :catch_4
    move-exception v0

    move-object/from16 v22, v1

    :goto_13
    move-object v3, v0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    .line 717
    :try_start_12
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    .line 718
    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 721
    :try_start_13
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_c

    :catchall_6
    move-exception v0

    move-object/from16 v1, v22

    :goto_14
    :try_start_14
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->clear()V

    throw v0

    .line 725
    :cond_12
    :goto_15
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v2

    .line 1760
    monitor-enter v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 726
    :try_start_15
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 1760
    :try_start_16
    monitor-exit v2

    .line 734
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->notifyObjectsInitialized()V

    .line 735
    invoke-virtual {v10}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 736
    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->clear()V

    const/4 v0, 0x0

    .line 737
    invoke-static {v8, v0}, Landroidx/compose/runtime/Recomposer;->access$setCompositionsRemoved$p(Landroidx/compose/runtime/Recomposer;Ljava/util/Set;)V

    .line 738
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 1673
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    :catchall_7
    move-exception v0

    move-object v3, v0

    .line 1760
    :try_start_17
    monitor-exit v2

    throw v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 1668
    :cond_13
    :goto_16
    :try_start_18
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_15

    .line 1669
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1670
    check-cast v4, Landroidx/compose/runtime/ControlledComposition;

    .line 616
    invoke-static {v8, v4, v9}, Landroidx/compose/runtime/Recomposer;->access$performRecompose(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 617
    move-object v6, v14

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 618
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 616
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 619
    :cond_14
    invoke-virtual {v10, v4}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 626
    :cond_15
    :try_start_19
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 633
    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_18

    :cond_16
    move-object/from16 v16, v0

    goto/16 :goto_1c

    .line 634
    :cond_17
    :goto_18
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v2

    .line 1674
    monitor-enter v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 635
    :try_start_1a
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getKnownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v3

    .line 1676
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v4, :cond_19

    .line 1677
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1678
    check-cast v6, Landroidx/compose/runtime/ControlledComposition;

    .line 637
    invoke-virtual {v10, v6}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 638
    invoke-interface {v6, v0}, Landroidx/compose/runtime/ControlledComposition;->observesAnyOf(Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 640
    move-object v7, v11

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 647
    :cond_19
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    .line 1682
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1a
    if-ge v5, v4, :cond_1c

    .line 1684
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v5

    check-cast v7, Landroidx/compose/runtime/ControlledComposition;

    .line 648
    invoke-virtual {v10, v7}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1a

    invoke-interface {v11, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1a

    move-object/from16 v16, v0

    .line 649
    move-object v0, v11

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_1a
    move-object/from16 v16, v0

    if-lez v6, :cond_1b

    .line 1690
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    sub-int v7, v5, v6

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v17

    aget-object v17, v17, v5

    aput-object v17, v0, v7

    :cond_1b
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    goto :goto_1a

    :cond_1c
    move-object/from16 v16, v0

    .line 1693
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    sub-int v5, v4, v6

    const/4 v6, 0x0

    invoke-static {v0, v6, v5, v4}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 1694
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/collection/MutableVector;->setSize(I)V

    .line 655
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 1674
    :try_start_1b
    monitor-exit v2

    .line 658
    :goto_1c
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    if-eqz v0, :cond_1d

    .line 660
    :try_start_1c
    invoke-static {v12, v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    .line 661
    :goto_1d
    move-object v0, v12

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 662
    invoke-static {v8, v12, v9}, Landroidx/compose/runtime/Recomposer;->access$performInsertValues(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v13, v0}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Iterable;)V

    .line 663
    invoke-static {v12, v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    goto :goto_1d

    :catch_5
    move-exception v0

    move-object v3, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v8

    .line 666
    :try_start_1d
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    .line 667
    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V

    goto/16 :goto_4

    :cond_1d
    move-object/from16 v0, v16

    goto/16 :goto_1

    :catchall_8
    move-exception v0

    .line 1674
    monitor-exit v2

    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    :catchall_9
    move-exception v0

    goto :goto_1e

    :catch_6
    move-exception v0

    move-object v3, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v8

    .line 622
    :try_start_1e
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object v7, v15

    move-object v8, v9

    move-object v9, v10

    .line 623
    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    .line 626
    :try_start_1f
    invoke-interface {v11}, Ljava/util/List;->clear()V

    goto/16 :goto_4

    :goto_1e
    invoke-interface {v11}, Ljava/util/List;->clear()V

    throw v0

    :catchall_a
    move-exception v0

    .line 1655
    monitor-exit v2

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    :catchall_b
    move-exception v0

    .line 1673
    :goto_1f
    sget-object v2, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v0
.end method
