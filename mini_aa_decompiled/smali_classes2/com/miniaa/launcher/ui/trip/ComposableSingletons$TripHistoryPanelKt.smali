.class public final Lcom/miniaa/launcher/ui/trip/ComposableSingletons$TripHistoryPanelKt;
.super Ljava/lang/Object;
.source "TripHistoryPanel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miniaa/launcher/ui/trip/ComposableSingletons$TripHistoryPanelKt;

.field private static lambda-1:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miniaa/launcher/ui/trip/ComposableSingletons$TripHistoryPanelKt;

    invoke-direct {v0}, Lcom/miniaa/launcher/ui/trip/ComposableSingletons$TripHistoryPanelKt;-><init>()V

    sput-object v0, Lcom/miniaa/launcher/ui/trip/ComposableSingletons$TripHistoryPanelKt;->INSTANCE:Lcom/miniaa/launcher/ui/trip/ComposableSingletons$TripHistoryPanelKt;

    const/4 v0, 0x0

    .line 466
    sget-object v1, Lcom/miniaa/launcher/ui/trip/ComposableSingletons$TripHistoryPanelKt$lambda-1$1;->INSTANCE:Lcom/miniaa/launcher/ui/trip/ComposableSingletons$TripHistoryPanelKt$lambda-1$1;

    const v2, 0x5b46d1a7

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    sput-object v0, Lcom/miniaa/launcher/ui/trip/ComposableSingletons$TripHistoryPanelKt;->lambda-1:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-1$app_systemRelease()Lkotlin/jvm/functions/Function3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/miniaa/launcher/ui/trip/ComposableSingletons$TripHistoryPanelKt;->lambda-1:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method
