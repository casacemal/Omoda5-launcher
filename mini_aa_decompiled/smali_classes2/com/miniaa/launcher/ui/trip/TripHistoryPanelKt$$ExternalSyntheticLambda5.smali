.class public final synthetic Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ZLkotlinx/coroutines/CoroutineScope;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iput-boolean p2, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda5;->f$1:Z

    iput-object p3, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda5;->f$2:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda5;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iget-boolean v1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda5;->f$1:Z

    iget-object v2, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda5;->f$2:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda5;->f$3:Landroid/content/Context;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->$r8$lambda$faNokFgLlaYryuDtcuatLVaU6lI(Ljava/util/List;ZLkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
