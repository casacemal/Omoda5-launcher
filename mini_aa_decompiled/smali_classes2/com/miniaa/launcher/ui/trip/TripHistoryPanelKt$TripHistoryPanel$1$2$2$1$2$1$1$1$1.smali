.class final Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$1$2$1$1$1$1;
.super Ljava/lang/Object;
.source "TripHistoryPanel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2;->invoke(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
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
.field final synthetic $day:Lcom/miniaa/launcher/ui/trip/DayItem;

.field final synthetic $selectedDay$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miniaa/launcher/ui/trip/DayItem;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miniaa/launcher/ui/trip/DayItem;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$1$2$1$1$1$1;->$day:Lcom/miniaa/launcher/ui/trip/DayItem;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$1$2$1$1$1$1;->$selectedDay$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 262
    invoke-virtual {p0}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$1$2$1$1$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$1$2$1$1$1$1;->$selectedDay$delegate:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$2$2$1$2$1$1$1$1;->$day:Lcom/miniaa/launcher/ui/trip/DayItem;

    invoke-virtual {p0}, Lcom/miniaa/launcher/ui/trip/DayItem;->getDayStartMs()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->access$TripHistoryPanel$lambda$6(Landroidx/compose/runtime/MutableState;J)V

    return-void
.end method
