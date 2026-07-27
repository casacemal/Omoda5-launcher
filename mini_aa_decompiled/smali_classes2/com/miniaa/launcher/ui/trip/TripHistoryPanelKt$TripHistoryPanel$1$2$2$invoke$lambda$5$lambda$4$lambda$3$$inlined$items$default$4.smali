.class public final Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$4;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyDsl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->invoke(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt$items$4\n+ 2 TripHistoryPanel.kt\ncom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,433:1\n250#2,13:434\n264#2:453\n1225#3,6:447\n*S KotlinDebug\n*F\n+ 1 TripHistoryPanel.kt\ncom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2\n*L\n262#1:447,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "it",
        "",
        "invoke",
        "(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V",
        "androidx/compose/foundation/lazy/LazyDslKt$items$4"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $allTrips$delegate$inlined:Landroidx/compose/runtime/State;

.field final synthetic $items:Ljava/util/List;

.field final synthetic $maxDailyKm$inlined:D

.field final synthetic $selectedDay$delegate$inlined:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/util/List;DLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$4;->$items:Ljava/util/List;

    iput-wide p2, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$4;->$maxDailyKm$inlined:D

    iput-object p4, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$4;->$selectedDay$delegate$inlined:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$4;->$allTrips$delegate$inlined:Landroidx/compose/runtime/State;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 152
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$4;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 10

    const-string v0, "C152@7074L22:LazyDsl.kt#428nma"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p4

    goto :goto_1

    :cond_1
    move p1, p4

    :goto_1
    and-int/lit8 p4, p4, 0x30

    if-nez p4, :cond_3

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result p4

    if-eqz p4, :cond_2

    const/16 p4, 0x20

    goto :goto_2

    :cond_2
    const/16 p4, 0x10

    :goto_2
    or-int/2addr p1, p4

    :cond_3
    and-int/lit16 p4, p1, 0x93

    const/16 v0, 0x92

    if-ne p4, v0, :cond_5

    .line 153
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_6

    const/4 p4, -0x1

    const-string v0, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:152)"

    const v1, -0x25b7f321

    invoke-static {v1, p1, p4, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$4;->$items:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miniaa/launcher/ui/trip/DayItem;

    const p2, -0x6ab5bd44

    .line 434
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-virtual {p1}, Lcom/miniaa/launcher/ui/trip/DayItem;->getDayStartMs()J

    move-result-wide v0

    iget-object p2, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$4;->$selectedDay$delegate$inlined:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->access$TripHistoryPanel$lambda$5(Landroidx/compose/runtime/MutableState;)J

    move-result-wide v2

    cmp-long p2, v0, v2

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_7

    move v3, p4

    goto :goto_4

    :cond_7
    move v3, v0

    .line 435
    :goto_4
    sget-object p2, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->INSTANCE:Lcom/miniaa/launcher/data/trip/TripHistoryStore;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$4;->$allTrips$delegate$inlined:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->access$TripHistoryPanel$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miniaa/launcher/ui/trip/DayItem;->getDayStartMs()J

    move-result-wide v4

    invoke-virtual {p2, v1, v4, v5}, Lcom/miniaa/launcher/data/trip/TripHistoryStore;->dailyKmForDate(Ljava/util/List;J)D

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmpl-double p2, v1, v4

    if-lez p2, :cond_8

    move v5, p4

    goto :goto_5

    :cond_8
    move v5, v0

    .line 437
    :goto_5
    iget-wide v6, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$4;->$maxDailyKm$inlined:D

    div-double/2addr v1, v6

    double-to-float p2, v1

    const/4 p4, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p4, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v6

    .line 440
    invoke-virtual {p1}, Lcom/miniaa/launcher/ui/trip/DayItem;->getDayName()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-virtual {p1}, Lcom/miniaa/launcher/ui/trip/DayItem;->getDayOfMonth()I

    move-result v2

    .line 443
    invoke-virtual {p1}, Lcom/miniaa/launcher/ui/trip/DayItem;->isToday()Z

    move-result v4

    const p2, -0x6689a7df

    .line 445
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p2

    .line 447
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    if-nez p2, :cond_9

    .line 448
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne p4, p2, :cond_a

    .line 446
    :cond_9
    new-instance p2, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$1$2$1$1$1$1;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$invoke$lambda$5$lambda$4$lambda$3$$inlined$items$default$4;->$selectedDay$delegate$inlined:Landroidx/compose/runtime/MutableState;

    invoke-direct {p2, p1, p0}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$1$2$1$1$1$1;-><init>(Lcom/miniaa/launcher/ui/trip/DayItem;Landroidx/compose/runtime/MutableState;)V

    move-object p4, p2

    check-cast p4, Lkotlin/jvm/functions/Function0;

    .line 450
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 446
    :cond_a
    move-object v7, p4

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v9, 0x0

    move-object v8, p3

    .line 439
    invoke-static/range {v1 .. v9}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->access$DayCell(Ljava/lang/String;IZZZFLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 153
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    :goto_6
    return-void
.end method
