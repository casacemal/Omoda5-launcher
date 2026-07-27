.class public final synthetic Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/miniaa/launcher/ui/weather/WeatherViewModel;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/compose/ui/Modifier;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;JZLandroidx/compose/ui/Modifier;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;->f$0:Lcom/miniaa/launcher/ui/weather/WeatherViewModel;

    iput-wide p2, p0, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;->f$1:J

    iput-boolean p4, p0, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p5, p0, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/Modifier;

    iput p6, p0, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;->f$4:I

    iput p7, p0, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;->f$0:Lcom/miniaa/launcher/ui/weather/WeatherViewModel;

    iget-wide v1, p0, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;->f$1:J

    iget-boolean v3, p0, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v4, p0, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/Modifier;

    iget v5, p0, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;->f$4:I

    iget v6, p0, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt$$ExternalSyntheticLambda0;->f$5:I

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Lcom/miniaa/launcher/ui/weather/WeatherWidgetKt;->$r8$lambda$UQhAdVo-zxn-vSV1MwDQD8vXQfg(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;JZLandroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
