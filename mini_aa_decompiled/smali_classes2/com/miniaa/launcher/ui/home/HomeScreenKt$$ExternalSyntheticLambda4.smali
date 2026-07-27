.class public final synthetic Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

.field public final synthetic f$1:Lcom/miniaa/launcher/ui/weather/WeatherViewModel;

.field public final synthetic f$2:Lcom/miniaa/launcher/ui/media/AlbumColors;

.field public final synthetic f$3:F

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Landroidx/compose/ui/Modifier;

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lcom/miniaa/launcher/ui/weather/WeatherViewModel;Lcom/miniaa/launcher/ui/media/AlbumColors;FZZLandroidx/compose/ui/Modifier;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$1:Lcom/miniaa/launcher/ui/weather/WeatherViewModel;

    iput-object p3, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$2:Lcom/miniaa/launcher/ui/media/AlbumColors;

    iput p4, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$3:F

    iput-boolean p5, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$4:Z

    iput-boolean p6, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$5:Z

    iput-object p7, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$6:Landroidx/compose/ui/Modifier;

    iput p8, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$7:I

    iput p9, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$8:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 0
    iget-object v0, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$1:Lcom/miniaa/launcher/ui/weather/WeatherViewModel;

    iget-object v2, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$2:Lcom/miniaa/launcher/ui/media/AlbumColors;

    iget v3, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$3:F

    iget-boolean v4, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$4:Z

    iget-boolean v5, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$5:Z

    iget-object v6, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$6:Landroidx/compose/ui/Modifier;

    iget v7, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$7:I

    iget v8, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$$ExternalSyntheticLambda4;->f$8:I

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static/range {v0 .. v10}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->$r8$lambda$RmSgA_4aSDhy3irNN-ABnp2bbdg(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lcom/miniaa/launcher/ui/weather/WeatherViewModel;Lcom/miniaa/launcher/ui/media/AlbumColors;FZZLandroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
