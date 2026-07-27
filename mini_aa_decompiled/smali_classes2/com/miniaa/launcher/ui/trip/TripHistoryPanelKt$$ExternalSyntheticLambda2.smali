.class public final synthetic Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:F

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IZZZFLkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$1:I

    iput-boolean p3, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$2:Z

    iput-boolean p4, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$3:Z

    iput-boolean p5, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$4:Z

    iput p6, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$5:F

    iput-object p7, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$6:Lkotlin/jvm/functions/Function0;

    iput p8, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$7:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$1:I

    iget-boolean v2, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$2:Z

    iget-boolean v3, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$3:Z

    iget-boolean v4, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$4:Z

    iget v5, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$5:F

    iget-object v6, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$6:Lkotlin/jvm/functions/Function0;

    iget v7, p0, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda2;->f$7:I

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->$r8$lambda$ASPFzjXaJweBm6U3d9-BB_m2ufc(Ljava/lang/String;IZZZFLkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
