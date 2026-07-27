.class final Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$SwipeTripCard$2;
.super Ljava/lang/Object;
.source "TripHistoryPanel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->SwipeTripCard(Lcom/miniaa/launcher/data/trip/TripSummary;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
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
.field final synthetic $trip:Lcom/miniaa/launcher/data/trip/TripSummary;

.field final synthetic $useImperial:Z


# direct methods
.method constructor <init>(Lcom/miniaa/launcher/data/trip/TripSummary;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$SwipeTripCard$2;->$trip:Lcom/miniaa/launcher/data/trip/TripSummary;

    iput-boolean p2, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$SwipeTripCard$2;->$useImperial:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 495
    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$SwipeTripCard$2;->invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    const-string v0, "$this$SwipeToDismissBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 496
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string v0, "com.miniaa.launcher.ui.trip.SwipeTripCard.<anonymous> (TripHistoryPanel.kt:495)"

    const v1, -0x725088fe

    invoke-static {v1, p3, p1, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$SwipeTripCard$2;->$trip:Lcom/miniaa/launcher/data/trip/TripSummary;

    iget-boolean p0, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$SwipeTripCard$2;->$useImperial:Z

    const/4 p3, 0x0

    invoke-static {p1, p0, p2, p3}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->access$TripCard(Lcom/miniaa/launcher/data/trip/TripSummary;ZLandroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
