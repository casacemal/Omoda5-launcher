.class final Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$PlaybackControls$1$1;
.super Ljava/lang/Object;
.source "MediaPlayerCard.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt;->PlaybackControls(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaPlayerCard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaPlayerCard.kt\ncom/miniaa/launcher/ui/media/MediaPlayerCardKt$PlaybackControls$1$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,425:1\n149#2:426\n*S KotlinDebug\n*F\n+ 1 MediaPlayerCard.kt\ncom/miniaa/launcher/ui/media/MediaPlayerCardKt$PlaybackControls$1$1\n*L\n342#1:426\n*E\n"
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
.field final synthetic $isPlaying:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$PlaybackControls$1$1;->$isPlaying:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 338
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$PlaybackControls$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 8

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 339
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    .line 339
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.miniaa.launcher.ui.media.PlaybackControls.<anonymous>.<anonymous> (MediaPlayerCard.kt:338)"

    const v2, -0x4a41e860

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 340
    :cond_2
    iget-boolean p2, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$PlaybackControls$1$1;->$isPlaying:Z

    if-eqz p2, :cond_3

    sget-object p2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {p2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/material/icons/filled/PauseKt;->getPause(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p2

    goto :goto_1

    :cond_3
    sget-object p2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {p2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/material/icons/filled/PlayArrowKt;->getPlayArrow(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p2

    :goto_1
    move-object v0, p2

    .line 341
    iget-boolean p0, p0, Lcom/miniaa/launcher/ui/media/MediaPlayerCardKt$PlaybackControls$1$1;->$isPlaying:Z

    if-eqz p0, :cond_4

    const-string p0, "Pause"

    goto :goto_2

    :cond_4
    const-string p0, "Play"

    :goto_2
    move-object v1, p0

    .line 342
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p0, Landroidx/compose/ui/Modifier;

    const/16 p2, 0x24

    int-to-float p2, p2

    .line 426
    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    .line 342
    invoke-static {p0, p2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 343
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v3

    const/16 v6, 0xd80

    const/4 v7, 0x0

    move-object v5, p1

    .line 339
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_3
    return-void
.end method
