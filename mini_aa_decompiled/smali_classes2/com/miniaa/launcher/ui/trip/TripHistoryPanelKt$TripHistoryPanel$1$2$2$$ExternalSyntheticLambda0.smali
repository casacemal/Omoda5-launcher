.class public final synthetic Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:D

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;DLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-wide p2, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$$ExternalSyntheticLambda0;->f$1:D

    iput-object p4, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-wide v1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$$ExternalSyntheticLambda0;->f$1:D

    iget-object v3, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/State;

    move-object v5, p1

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-static/range {v0 .. v5}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->$r8$lambda$WTOjKUqJg_y7a2k5aLJRhLsQDy4(Ljava/util/List;DLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
