.class public final synthetic Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Lkotlin/ranges/ClosedFloatingPointRange;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(FLkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;III)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda26;->f$0:F

    iput-object p2, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda26;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda26;->f$2:Lkotlin/ranges/ClosedFloatingPointRange;

    iput p4, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda26;->f$3:I

    iput p5, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda26;->f$4:I

    iput p6, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda26;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget v0, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda26;->f$0:F

    iget-object v1, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda26;->f$1:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda26;->f$2:Lkotlin/ranges/ClosedFloatingPointRange;

    iget v3, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda26;->f$3:I

    iget v4, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda26;->f$4:I

    iget v5, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda26;->f$5:I

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt;->$r8$lambda$yBsXam-U_8jV5JkvT0n56d53o0k(FLkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
