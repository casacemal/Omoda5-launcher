.class final Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$SettingsPanel$1$1$1$1$1$2;
.super Ljava/lang/Object;
.source "SettingsPanel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/settings/SettingsPanelKt;->SettingsPanel(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
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
.field final synthetic $label:Ljava/lang/String;

.field final synthetic $mph:Z

.field final synthetic $settings$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/miniaa/launcher/data/settings/LauncherSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/lang/String;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/State<",
            "Lcom/miniaa/launcher/data/settings/LauncherSettings;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$SettingsPanel$1$1$1$1$1$2;->$mph:Z

    iput-object p2, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$SettingsPanel$1$1$1$1$1$2;->$label:Ljava/lang/String;

    iput-object p3, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$SettingsPanel$1$1$1$1$1$2;->$settings$delegate:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 130
    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$SettingsPanel$1$1$1$1$1$2;->invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-string v2, "$this$TextButton"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 131
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_2

    .line 131
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.miniaa.launcher.ui.settings.SettingsPanel.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (SettingsPanel.kt:130)"

    const v4, -0x6b70186b

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 133
    :cond_2
    invoke-static {}, Lcom/miniaa/launcher/ui/theme/TypeKt;->getGoogleSansFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v13

    const/16 v1, 0xe

    .line 134
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    .line 135
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getMedium()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v12

    .line 136
    iget-object v1, v0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$SettingsPanel$1$1$1$1$1$2;->$settings$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt;->access$SettingsPanel$lambda$0(Landroidx/compose/runtime/State;)Lcom/miniaa/launcher/data/settings/LauncherSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miniaa/launcher/data/settings/LauncherSettings;->getSpeedMph()Z

    move-result v1

    iget-boolean v2, v0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$SettingsPanel$1$1$1$1$1$2;->$mph:Z

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/miniaa/launcher/ui/theme/ColorKt;->getOrangeAccent()J

    move-result-wide v1

    goto :goto_1

    :cond_3
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v14

    const/16 v20, 0xe

    const/16 v21, 0x0

    const v16, 0x3f333333    # 0.7f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v21}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v1

    :goto_1
    move-wide v7, v1

    .line 132
    iget-object v5, v0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$SettingsPanel$1$1$1$1$1$2;->$label:Ljava/lang/String;

    const/16 v28, 0x0

    const v29, 0x1ff92

    const/4 v6, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v27, 0x1b0c00

    move-object/from16 v26, p2

    .line 131
    invoke-static/range {v5 .. v29}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    :goto_2
    return-void
.end method
