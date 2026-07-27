.class public final Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$nestedScrollConnection$1$1;
.super Ljava/lang/Object;
.source "TripHistoryPanel.kt"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->TripHistoryPanel(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\'\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "com/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$nestedScrollConnection$1$1",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "onPreScroll",
        "Landroidx/compose/ui/geometry/Offset;",
        "available",
        "source",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "onPreScroll-OzD1aCk",
        "(JI)J",
        "onPostScroll",
        "consumed",
        "onPostScroll-DzOQY0M",
        "(JJI)J",
        "app_systemRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $collapsed$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tripListState:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$nestedScrollConnection$1$1;->$tripListState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$nestedScrollConnection$1$1;->$collapsed$delegate:Landroidx/compose/runtime/MutableState;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostScroll-DzOQY0M(JJI)J
    .locals 0

    .line 160
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$nestedScrollConnection$1$1;->$tripListState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    move-result p1

    if-nez p1, :cond_0

    .line 161
    iget-object p0, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$nestedScrollConnection$1$1;->$collapsed$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->access$TripHistoryPanel$lambda$32$lambda$17(Landroidx/compose/runtime/MutableState;Z)V

    .line 163
    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p0

    return-wide p0
.end method

.method public onPreScroll-OzD1aCk(JI)J
    .locals 1

    .line 151
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p3

    const/high16 v0, -0x3f600000    # -5.0f

    cmpg-float p3, p3, v0

    if-gez p3, :cond_0

    iget-object p3, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$nestedScrollConnection$1$1;->$collapsed$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->access$TripHistoryPanel$lambda$32$lambda$17(Landroidx/compose/runtime/MutableState;Z)V

    .line 152
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    const/high16 p2, 0x40a00000    # 5.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$nestedScrollConnection$1$1;->$tripListState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$nestedScrollConnection$1$1;->$tripListState:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemScrollOffset()I

    move-result p1

    const/16 p2, 0xa

    if-ge p1, p2, :cond_1

    .line 153
    iget-object p0, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$TripHistoryPanel$1$nestedScrollConnection$1$1;->$collapsed$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->access$TripHistoryPanel$lambda$32$lambda$17(Landroidx/compose/runtime/MutableState;Z)V

    .line 155
    :cond_1
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p0

    return-wide p0
.end method
