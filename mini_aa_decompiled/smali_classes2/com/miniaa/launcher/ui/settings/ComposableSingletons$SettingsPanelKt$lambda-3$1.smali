.class final Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-3$1;
.super Ljava/lang/Object;
.source "SettingsPanel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/material3/SliderState;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsPanel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsPanel.kt\ncom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-3$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,1063:1\n149#2:1064\n*S KotlinDebug\n*F\n+ 1 SettingsPanel.kt\ncom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-3$1\n*L\n1038#1:1064\n*E\n"
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


# static fields
.field public static final INSTANCE:Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-3$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-3$1;

    invoke-direct {v0}, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-3$1;-><init>()V

    sput-object v0, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-3$1;->INSTANCE:Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-3$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1035
    check-cast p1, Landroidx/compose/material3/SliderState;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-3$1;->invoke(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p0, p3, 0x11

    const/16 p1, 0x10

    if-ne p0, p1, :cond_1

    .line 1036
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1041
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 1036
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x1

    const-string p1, "com.miniaa.launcher.ui.settings.ComposableSingletons$SettingsPanelKt.lambda-3.<anonymous> (SettingsPanel.kt:1035)"

    const v0, 0x49a3227

    invoke-static {v0, p3, p0, p1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1037
    :cond_2
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p0, Landroidx/compose/ui/Modifier;

    const/16 p1, 0x16

    int-to-float p1, p1

    .line 1064
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    .line 1038
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 1039
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/Shape;

    invoke-static {p0, p1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1040
    invoke-static {}, Lcom/miniaa/launcher/ui/theme/ColorKt;->getOrangeAccent()J

    move-result-wide v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    const/4 p1, 0x0

    .line 1036
    invoke-static {p0, p2, p1}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
