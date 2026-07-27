.class public final synthetic Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/miniaa/launcher/ui/settings/SettingsViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda9;->f$0:Lcom/miniaa/launcher/ui/settings/SettingsViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda9;->f$0:Lcom/miniaa/launcher/ui/settings/SettingsViewModel;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt;->$r8$lambda$FeFV126nsWx36dHNSigI8K7DXwI(Lcom/miniaa/launcher/ui/settings/SettingsViewModel;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
