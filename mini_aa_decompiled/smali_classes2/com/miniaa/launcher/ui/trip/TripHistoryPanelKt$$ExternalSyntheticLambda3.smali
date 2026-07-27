.class public final synthetic Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lcom/miniaa/launcher/data/trip/TripSummary;

    invoke-static {p0, p2}, Lcom/miniaa/launcher/ui/trip/TripHistoryPanelKt;->$r8$lambda$X3eCw6eZfpm7_RY8tCUI9jJ620w(ILcom/miniaa/launcher/data/trip/TripSummary;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
