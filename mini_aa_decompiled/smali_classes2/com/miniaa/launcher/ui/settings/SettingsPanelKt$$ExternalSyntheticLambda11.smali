.class public final synthetic Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/miniaa/launcher/ui/settings/SettingsViewModel;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/miniaa/launcher/ui/settings/SettingsViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda11;->f$1:Lcom/miniaa/launcher/ui/settings/SettingsViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt$$ExternalSyntheticLambda11;->f$1:Lcom/miniaa/launcher/ui/settings/SettingsViewModel;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/miniaa/launcher/ui/settings/SettingsPanelKt;->$r8$lambda$i9LZykc2cXlwT68FcNiFu-YH_8Y(Landroid/content/Context;Lcom/miniaa/launcher/ui/settings/SettingsViewModel;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
