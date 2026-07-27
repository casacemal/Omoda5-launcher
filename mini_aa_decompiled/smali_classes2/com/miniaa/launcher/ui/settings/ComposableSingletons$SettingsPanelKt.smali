.class public final Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt;
.super Ljava/lang/Object;
.source "SettingsPanel.kt"


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
.field public static final INSTANCE:Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt;

.field private static lambda-1:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static lambda-2:Lkotlin/jvm/functions/Function3;
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

.field private static lambda-3:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/material3/SliderState;",
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

    new-instance v0, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt;

    invoke-direct {v0}, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt;-><init>()V

    sput-object v0, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt;->INSTANCE:Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt;

    .line 663
    sget-object v0, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-1$1;->INSTANCE:Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-1$1;

    const v1, 0x1a9346b9

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    const v0, 0x8efb305

    .line 819
    sget-object v1, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-2$1;->INSTANCE:Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-2$1;

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    sput-object v0, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt;->lambda-2:Lkotlin/jvm/functions/Function3;

    const v0, 0x49a3227

    .line 1035
    sget-object v1, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-3$1;->INSTANCE:Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt$lambda-3$1;

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    sput-object v0, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt;->lambda-3:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-1$app_systemRelease()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getLambda-2$app_systemRelease()Lkotlin/jvm/functions/Function3;
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

    sget-object p0, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt;->lambda-2:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public final getLambda-3$app_systemRelease()Lkotlin/jvm/functions/Function3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/material3/SliderState;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/miniaa/launcher/ui/settings/ComposableSingletons$SettingsPanelKt;->lambda-3:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method
